<?php
include_once('model_db.php');
class model_web extends db{
	public function _web_config($lang){
		$sql = "SELECT * FROM `web_config` WHERE `delete`=0 AND status=1 AND lang='{$lang}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _web_menu($lang, $parent, $position){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh` FROM `web_menu` WHERE `delete`=0 AND `status`=1 AND `lang`='{$lang}' AND `parent_id`='{$parent}' AND `position_id` LIKE '%,{$position},%' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _web_menu_one($data){
		if(!is_numeric($data)) $str_qr = "AND name_alias='{$data}'";
		else $str_qr = "AND id='{$data}'";
		
		$sql = "SELECT * FROM `web_menu` WHERE `delete`=0 AND status=1 {$str_qr} LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
	public function _web_menu_type($type){
		$sql = "SELECT * FROM `web_menu` WHERE `delete`=0 AND status=1 AND type_id='{$type}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _web_menu_id($id){
		$sql = "SELECT `id`,`name`,`url` FROM `web_menu` WHERE `delete`=0 AND status=1 AND id='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _web_menu_root($parent, $id, &$name, &$url){
		if($parent==0) return $id;
		else{
			$row = $this->_web_menu_id($parent);
			$name = $row['name'];
			$url = $row['url'];
			return $this->_web_menu_root($row['parent_id'],$row['id'],$name,$url);
		}
	}
	
	public function _link_detail($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$sql = "SELECT `url` FROM `web_menu` WHERE `id`='".$str[$i]."'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		return $row['url'];
	}
	
	public function _web_slider_banner($position, $lang, $menu_id=NULL){
		if($menu_id!=NULL) $menu_id = "AND `menu_id` LIKE '%,{$menu_id},%'"; else $menu_id = '';
		$sql = "SELECT `name`,`url_hinh`,`url` FROM `web_slider_banner` WHERE `delete`=0 AND `status`=1 AND `position_id`='{$position}' AND lang='{$lang}' {$menu_id} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _pageslist($baseurl, $totalrows, $offset, $per_page, $currentpage){
		$totalpages = ceil($totalrows/$per_page);
		if($totalpages>1){
			$from = $currentpage-$offset;
			$to = $currentpage +$offset;
			if($from<=0) $from=1; 
			if($to>$totalpages) $to=$totalpages;
			$links = '';
			for($j=$from; $j<=$to; $j++){
				if($j==$currentpage) $links = $links."<span>{$j}</span>"; 
				else $links = $links."<a href='{$baseurl}{$j}/'>{$j}</a>"; 	
			}
			return $links;
		}
	}
	
	/*home*/
	public function _home_about($id){
		$sql = "SELECT `name`,`content` FROM `web_article` WHERE `delete`=0 AND `status`=1 AND `other`=1 AND menu_id LIKE '%,{$id},%' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _home_danhmuc_product($lang){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh` FROM `web_menu` WHERE `delete`=0 AND `status`=1 AND `lang`='{$lang}' AND `other`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	public function _home_products($id){
		$sql = "SELECT `id`,`name`,`name_alias`,`url`,`url_hinh`,`giaban`,`giagoc` FROM `web_product` WHERE `delete`=0 AND `status`=1 AND `other`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `ngay_dang` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	/*end home*/
	
	/*list*/
	public function _list_web_product($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`name_alias`,`url`,`url_hinh`,`giaban`,`giagoc` FROM `web_product` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `ngay_dang` DESC LIMIT $startrow, $per_page";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_product` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	public function _list_web_article($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh`,`metaDescription`,`ngay_dang` FROM `web_article` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `ngay_dang` DESC LIMIT $startrow, $per_page";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_article` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	/*end list*/
	
	/*detail*/
	public function _detail_article($alias){
		$sql = "SELECT * FROM `web_article` WHERE `delete`=0 AND status=1 AND name_alias='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _detail_product($alias){
		$sql = "SELECT * FROM `web_product` WHERE `delete`=0 AND status=1 AND name_alias='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	/*end detail*/
	
	/*contact*/
	public function _web_contact_insert($name,$email,$phone,$diachi,$message,$lang='vi'){
		$date = $this->_date_time_vietnam();
		$sql = "INSERT INTO `web_contact` VALUES (NULL, '{$name}', '{$email}', '{$phone}', '{$diachi}', '{$message}', '{$lang}', '0', '{$date}', NULL, 'khachhang', NULL, '0');";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $this->db->insert_id;
	}
	public function _web_contact_detail($id){
		$sql = "SELECT * FROM `web_contact` WHERE `delete`=0 AND id='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _web_contact_update($id){
		$date = $this->_date_time_vietnam();
		$sql = "UPDATE `web_contact` SET status=1, date_update='{$date}' WHERE `delete`=0 AND id='{$id}'";
		if(!$result = $this->db->query($sql)) return FALSE;
	}
	public function _sendmail($title,$subject,$body,$add_address,$add_cc='',$add_bcc=''){
		include_once('class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host       = "localhost"; // tên SMTP server
		$mail->SMTPDebug  = 2; // enables SMTP debug information (for testing): 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth   = true; // Sử dụng đăng nhập vào account
		$mail->Host       = "localhost"; // Thiết lập thông tin của SMPT
		$mail->Port       = 25; // Thiết lập cổng gửi email của máy
		$mail->Username   = CONS_SEND_MAIL_ACCOUNT; // SMTP account username
		$mail->Password   = CONS_SEND_MAIL_PASSWORD; // SMTP account password
		$mail->IsHTML(true);
		$mail->SetFrom(CONS_SEND_MAIL_ACCOUNT,$title); //Thiet lap thong tin nguoi gui va email nguoi gui
		foreach($add_address as $row) $mail->AddAddress($row['email'],$row['name']); //Thiết lập thông tin người nhận
		if($add_cc!='') foreach($add_cc as $row) $mail->AddCC($row['email'],$row['name']);
		if($add_bcc!='') foreach($add_bcc as $row) $mail->AddBCC($row['email'],$row['name']);
		//$mail->AddReplyTo("contact@domain.com","Name"); //Thiết lập email nhận email hồi đáp, nếu người nhận nhấn nút Reply
		$mail->CharSet = "utf-8";
		$mail->Subject = $subject; //Thiết lập tiêu đề
		$mail->Body = $body; //Thiết lập nội dung chính của email
		
		if($mail->Send()) return true;
	}
	/*end contact*/
	
	/*other post*/
	public function _other_post_article($id,$idMenu,$limit=5){
		$sql = "SELECT `name`,`url`,`url_hinh` FROM `web_article` WHERE `delete`=0 AND `status`=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY `ngay_dang` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	public function _other_post_product($id,$idMenu,$limit=5){
		$sql = "SELECT `id`,`name`,`name_alias`,`url`,`url_hinh`,`giaban`,`giagoc` FROM `web_product` WHERE `delete`=0 AND `status`=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY `ngay_dang` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	/*end other post*/
	
	/*order*/
	public function _web_ds_tinhthanh($id=0){
		if($id!=0) $str=" AND id='{$id}' ";
		$sql = "SELECT `id`,`name`,`phigiaohang` FROM `web_ds_tinhthanh` WHERE `status`=1 {$str} ORDER BY `order` DESC, `name`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	public function _web_ds_quanhuyen($tinhthanh=0,$id=0){
		$str='';
		if($tinhthanh!=0) $str.=" AND tinhthanh_id='{$tinhthanh}' ";
		if($id!=0) $str.=" AND id='{$id}' ";
		if($tinhthanh==0 && $id==0) $str.=" AND id='0' ";
		$sql = "SELECT `id`,`name`,`phigiaohang` FROM `web_ds_quanhuyen` WHERE `status`=1 {$str} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _web_product_order_insert($order_id,$name,$email,$phone,$tinh_thanh,$quan_huyen,$diachi,$tongtien,$tongsoluong,$phigiaohang,$giamgia,$thanhtien){
		$date = date('Y-m-d H:i:s');
		$sql = "INSERT INTO `web_product_order` VALUES ('{$order_id}', '{$name}', '{$email}', '{$phone}', '{$tinh_thanh}', '{$quan_huyen}', '{$diachi}', '{$tongtien}', '{$tongsoluong}', '{$phigiaohang}', '{$giamgia}', '{$thanhtien}', 'vi', '0', '{$date}', '{$date}', 'khachhang', NULL, '0')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $this->db->insert_id;
	}
	public function _web_product_order_detail_insert($name,$product_id,$order_id,$soluong,$dongia,$giamgia,$thanhtien){
		$date = date('Y-m-d H:i:s');
		$sql = "INSERT INTO `web_product_order_detail` VALUES (NULL, '{$name}', '{$product_id}', '{$order_id}', '{$soluong}', '{$dongia}', '{$giamgia}', '{$thanhtien}', 'vi', '1', '{$date}', NULL, 'khachhang', NULL, '0')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
	}
	public function _view_product_order($id){
		$sql = "SELECT * FROM `web_product_order` WHERE `delete`=0 AND id='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _view_product_order_detail($order_id){
		$sql = "SELECT * FROM `web_product_order_detail` WHERE `delete`=0 AND order_id='{$order_id}' ";
		if(!$result = $this->db->query($sql)) return FALSE;
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	/*end order*/
	
	/*function*/
	public function _date_time_vietnam(){
		$timezone = +7; //(GMT +7:00)  
        return gmdate("Y-m-d H:i:s", time() + 3600*($timezone+date("0"))); 
	}
	/*end function*/
	
}//class