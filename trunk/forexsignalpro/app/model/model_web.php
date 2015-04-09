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
		$sql = "SELECT `name`,`img_avatar`,`url` FROM `web_slider_banner` WHERE `status`=1 AND `position_id`='{$position}' AND `lang`='{$lang}' {$menu_id} ORDER BY `order`";
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
	public function _list_web_forex($limt=6){
		$sql = "SELECT `id`,`name`,`description`,`exactly`,`datetime` FROM `web_forex` WHERE `status`=1 AND `exactly`<>'2' ORDER BY `datetime` DESC LIMIT {$limt}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _total_web_forex(){
		$sql = "SELECT count(`id`) FROM `web_forex` WHERE `status`='1' AND `exactly`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$total_true = $result->fetch_row();
		
		$sql = "SELECT count(`id`) FROM `web_forex` WHERE `status`='1' AND `exactly`<>2";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$total = $result->fetch_row();
		
		return array($total_true[0], $total[0]);
	}
	public function _list_article_home_page($id, $limt=1){
		$sql = "SELECT `id`,`name`,`url`,`img_avatar`,`description`,`content`,`datetime` FROM `web_article` WHERE `status`=1 AND `other`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$limt}";
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
		
		$sql = "SELECT count(`id`) FROM `web_article` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%'";
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
	public function _detail_signup($id){
		$sql = "SELECT * FROM `web_users_package` WHERE `status`=1 AND `id`='{$id}' LIMIT 1";
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
		$sql = "SELECT `name`,`name_alias`,`menu_id` FROM `web_article` WHERE `status`=1 AND `id`<>'{$id}' AND `menu_id` LIKE '%,{$idMenu},%' ORDER BY `datetime` DESC LIMIT {$limit}";
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
	
	/*signup*/
	public function _users_package($parent=0, $limit=3){
		$sql = "SELECT * FROM `web_users_package` WHERE `status`=1 AND `parent`='{$parent}' ORDER BY `order` LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end signup*/
	
	/*payment*/
	public function _insert_payment($name, $email, $package_id, $PAYEE_ACCOUNT, $PAYMENT_AMOUNT, $PAYMENT_UNITS, $PAYMENT_ID, $TIMESTAMPGMT, $PAYER_ACCOUNT, $tolen){
		$sql = "INSERT INTO `web_payment` VALUES (NULL, '{$name}', '{$email}', '{$package_id}', '{$PAYEE_ACCOUNT}', '{$PAYMENT_AMOUNT}', '{$PAYMENT_UNITS}', '{$PAYMENT_ID}', '{$TIMESTAMPGMT}', '{$PAYER_ACCOUNT}', '{$tolen}', '{$lang}', '1')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	/*end payment*/
	
	/*login user*/
	public function _check_user_login($email, $pass){
		$pass = md5($pass);
		$sql = "SELECT `id`,`name`,`email`,`group_id` FROM `web_users` WHERE `status`=1 AND `group_id`=1 AND `email`='{$email}' AND `password`='{$pass}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _check_lock_ip($ip_address){
		$sql = "SELECT `id`,`login_number`,`disable_date` FROM `web_users_lock_ip` WHERE `ip_address`='{$ip_address}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _lock_ip($ip_address, $login_number, $datetime){
		if($login_number==0){
			$sql = "INSERT INTO `web_users_lock_ip` (`ip_address`,`login_number`,`disable_date`,`datetime`) VALUES ('{$ip_address}', '1', '0', '{$datetime}')";
		}else{
			$login_number += 1;
			if($login_number<CONS_NUMBER_LOGIN){
				$disable_date = 0;
			}else{
				$disable_date = $datetime + CONS_DISABLE_DATE;
			}
			$sql = "UPDATE `web_users_lock_ip` SET `login_number`='{$login_number}', `disable_date`='{$disable_date}', `datetime`='{$datetime}' WHERE `ip_address`='{$ip_address}'";
		}
		if(!$this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _list_currency(){
		$sql = "SELECT `id`,`name`,`average` FROM `web_currency` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _web_support_resistance(){
		$sql = "SELECT * FROM `web_support_resistance` WHERE `status`=1 ORDER BY `datetime` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _list_real_time($limit=1){
		$sql = "SELECT `web_real_time`.*, `web_currency`.`name` as `currency` FROM `web_real_time`,`web_currency` WHERE `web_real_time`.`status`=1 AND `currency_id`=`web_currency`.`id` ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end login user*/
	
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