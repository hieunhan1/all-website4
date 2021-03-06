<?php
include_once('model_db.php');
class model_web extends db{
	public function _web_config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _web_menu($lang, $parent, $position){
		$sql = "SELECT `id`,`name`,`url`,`img_avatar` FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `parent`='{$parent}' AND `position_id` LIKE '%,{$position},%' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _web_menu_one($data){
		if(!is_numeric($data)) $str_qr = "AND name_alias='{$data}'";
		else $str_qr = "AND id='{$data}'";
		
		$sql = "SELECT * FROM `web_menu` WHERE status=1 {$str_qr} LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
	public function _menu_type($id){
		$sql = "SELECT `id`,`name`,`url_img`,`url_img_thumb` FROM `web_menu_type` WHERE `status`=1 AND `id`='{$id}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
	public function _web_menu_type($type, $lang){
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `type_id`='{$type}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _web_menu_id($id){
		$sql = "SELECT `id`,`name`,`url`,`parent` FROM `web_menu` WHERE status=1 AND id='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _web_menu_root($parent, $id, &$name, &$url){
		if($parent==0) return $id;
		$row = $this->_web_menu_id($parent);
		$name = $row['name'];
		$url = $row['url'];
		return $this->_web_menu_root($row['parent'],$row['id'],$name,$url);
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
		$sql = "SELECT `name`,`img_avatar`,`url`,`description` FROM `web_slider_banner` WHERE `status`=1 AND `position_id`='{$position}' AND `lang`='{$lang}' {$menu_id} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _pageslist($baseurl, $totalrows, $offset, $per_page, $currentpage, &$totalpages=0){
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
	public function _list_menu_home_page($lang){
		$sql = "SELECT `id`,`name`,`url`,`img_avatar` FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `other`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _list_article_home_page($id){
		$sql = "SELECT `id`,`name`,`url`,`img_avatar`,`description` FROM `web_article` WHERE `status`=1 AND `other`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `datetime` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _list_article_news($limit=5){
		$sql = "SELECT `id`,`name`,`url` FROM `web_article` WHERE `status`=1 AND `other`=1 ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end home*/
	
	/*list*/
	public function _list_web_article($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`name_alias`,`url`,`img_avatar`,`description`,`datetime`,`menu_id` FROM `web_article` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$startrow}, {$per_page}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_article` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	public function _list_web_product($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`name_alias`,`url`,`img_avatar`,`description`,`price`,`datetime`,`menu_id` FROM `web_product` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$startrow}, {$per_page}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_product` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	public function _list_web_photo($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`img_avatar` FROM `web_photo` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `order` DESC, `id` DESC LIMIT {$startrow}, {$per_page}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_photo` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	public function _list_web_video($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`url`,`img_avatar`,`description` FROM `web_video` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$startrow}, {$per_page}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_video` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	
	public function _list_menu_parent($idMenu){ //dung cho thu vien anh
		$sql = "SELECT `id`,`name`,`url`,`img_avatar`,`title` FROM `web_menu` WHERE `status`=1 AND `parent`='{$idMenu}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end list*/
	
	/*detail*/
	public function _detail_article($alias){
		$sql = "SELECT * FROM `web_article` WHERE `status`=1 AND `name_alias`='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _detail_product($alias){
		$sql = "SELECT * FROM `web_product` WHERE `status`=1 AND `name_alias`='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _detail_service($alias){
		$sql = "SELECT * FROM `web_article` WHERE `status`=1 AND `name_alias`='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _detail_video($alias){
		$sql = "SELECT * FROM `web_video` WHERE `status`=1 AND `name_alias`='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _list_photo($idMenu){
		$sql = "SELECT `id`,`name`,`img_avatar` FROM `web_photo` WHERE `status`=1 AND `menu_id` LIKE '%,{$idMenu},%' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end detail*/
	
	/*contact*/
	public function _web_contact_insert($name,$email,$phone,$address,$message,$lang='vi'){
		$date = $this->_current_date_time();
		$sql = "INSERT INTO `web_contact` VALUES (NULL, '{$name}', '{$email}', '{$phone}', '{$address}', '{$message}', '{$date}', '{$lang}', '0')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $this->db->insert_id;
	}
	public function _web_contact_detail($id){
		$sql = "SELECT * FROM `web_contact` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _web_contact_update($id){
		$date = $this->_current_date_time();
		$sql = "UPDATE `web_contact` SET `status`=1, `datetime`='{$date}' WHERE `id`='{$id}'";
		if(!$result = $this->db->query($sql)) return FALSE;
	}
	public function _sendmail($title,$subject,$body,$add_address,$add_cc='',$add_bcc=''){
		include_once('class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host       = CONS_HOST_SMTP_SERVER; // tên SMTP server
		$mail->SMTPDebug  = 2; // enables SMTP debug information (for testing): 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth   = true; // Sử dụng đăng nhập vào account
		$mail->Port       = 25; // Thiết lập cổng gửi email của máy
		$mail->Username   = CONS_SEND_MAIL_ACCOUNT; // SMTP account username
		$mail->Password   = CONS_SEND_MAIL_PASSWORD; // SMTP account password
		$mail->IsHTML(true);
		$mail->SetFrom(CONS_SEND_MAIL_ACCOUNT,$title); //Thiet lap thong tin nguoi gui va email nguoi gui
		foreach($add_address as $row) $mail->AddAddress($row['email'],$row['name']); //Thiết lập thông tin người nhận
		if($add_cc!='') foreach($add_cc as $row) $mail->AddCC($row['email'],$row['name']);
		if($add_bcc!='') foreach($add_bcc as $row) $mail->AddBCC($row['email'],$row['name']);
		$mail->CharSet = "utf-8";
		$mail->Subject = $subject; //Thiết lập tiêu đề
		$mail->Body = $body; //Thiết lập nội dung chính của email
		if($mail->Send()) return true;
	}
	/*end contact*/
	
	/*other post*/
	public function _other_post_article($id,$idMenu,$limit=5){
		$sql = "SELECT `name`,`url`,`menu_id` FROM `web_article` WHERE `status`=1 AND `id`<>'{$id}' AND `menu_id` LIKE '%,{$idMenu},%' ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _other_post_video($id,$idMenu,$limit=5){
		$sql = "SELECT `name`,`url`,`menu_id` FROM `web_video` WHERE `status`=1 AND `id`<>'{$id}' AND `menu_id` LIKE '%,{$idMenu},%' ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end other post*/
	
	/*web_chinhanh*/
	public function _list_web_chinhanh(){
		$sql = "SELECT * FROM `web_chinhanh` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end web_chinhanh*/
	
	/*function*/
	public function _current_date_time(){
        return time(); 
	}
	public function _date_time_vietnam(){
		$timezone = +7; //(GMT +7:00)  
        return gmdate("Y-m-d H:i:s", time() + 3600*($timezone+date("0"))); 
	}
	/*end function*/
	
}//class