<?php
class modelPages extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _listWebMenuType(){
		$sql = "SELECT `id`,`name`,`table_data`,`url_img`,`url_img_thumb` FROM `web_menu_type` WHERE `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['id']] = array(
				'id'=>$row['id'],
				'name'=>$row['name'],
				'table_data'=>$row['table_data'],
				'url_img'=>$row['url_img'],
				'url_img_thumb'=>$row['url_img_thumb'],
			);
		}
		return $data;
	}
	
	public function _listMenu($lang, $parent, $position=NULL){
		if($position!=NULL) $position="AND `position_id` LIKE '%,{$position},%'";
		$sql = "SELECT `id`, `name`, `url`, `img`, `title` FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `parent`='{$parent}' {$position} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _menuIdOrAlias($data){
		if(!is_numeric($data)) $str="AND `name_alias`='{$data}'";
		else $str="AND `id`='{$data}'";
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 {$str} LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
	public function _menuRoot($parent, $arr=NULL){
		if($arr==NULL) $arr=array();
		$row = $this->_menuIdOrAlias($parent);
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name'], 'url'=>$row['url']);
		if($row['parent']==0) return array_reverse($arr);
		return $this->_menuRoot($row['parent'], $arr);
	}
	
	public function _listSliderBanner($lang, $position, $menu_id=NULL, $limit=NULL){
		if($lang!='') $lang="AND `lang`='{$lang}'";
		if($menu_id!=NULL) $menu_id = "AND `menu_id` LIKE '%,{$menu_id},%'"; else $menu_id = '';
		if($limit!=NULL) $limit = "LIMIT {$limit}";
		$sql = "SELECT `name`, `img`, `url` FROM `web_slider_banner` WHERE `status`=1 AND `position_id`='{$position}' {$lang} {$menu_id} ORDER BY `order`, `id` DESC {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listDataTable($table, $idMenu, &$totalRows, $perPage=10, $startRow=0, $select=NULL, $where=NULL, $orderBy=NULL){
		$select = '`id`, `name`, `name_alias`, `url`, `img`, `description`, `datetime`,'.$select;
		$select = trim($select,',');
		$orderBy= $orderBy.',`datetime` DESC';
		$orderBy = trim($orderBy,',');
		$where = "`status`=1 AND `menu_id` LIKE '%,{$idMenu},%' AND ".$where;
		$where = trim($where,'AND ');
		
		$sql = "SELECT {$select} FROM `{$table}` WHERE {$where} ORDER BY {$orderBy} LIMIT {$startRow}, {$perPage}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `{$table}` WHERE {$where}";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalRows=$row[0];
		
		return $data;
	}
	
	public function _listParentMenu($id){
		$sql = "SELECT `id`, `name`, `url`, `img`, `title` FROM `web_menu` WHERE `status`=1 AND `parent`='{$id}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listChiNhanh($lang){
		$sql = "SELECT * FROM `web_chinhanh` WHERE `status`=1 AND `lang`='{$lang}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listTagsKeyword($lang){
		$sql = "SELECT * FROM `web_tags` WHERE `status`=1 AND `lang`='{$lang}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	/*other*/
	public function _listKhaiGiang($id){
		$sql = "SELECT `web_lichkhaigiang`.`id`, `web_lichkhaigiang`.`name`, `web_article`.`url`, `web_lichkhaigiang`.`khaigiang` FROM `web_lichkhaigiang`, `web_article` WHERE `web_lichkhaigiang`.`status`=1 AND `web_article`.`id`=`article_id` AND `web_lichkhaigiang`.`menu_id` LIKE '%,{$id},%' ORDER BY `web_lichkhaigiang`.`order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listChuongTrinhMenu($lang){
		$sql = "SELECT `id`, `name`, `url`, `img`, `description` FROM `web_menu` WHERE `status`=1 AND `other`=1 AND `lang`='{$lang}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _listDetailMenu($id, $limit=7){
		$sql = "SELECT `id`, `name`, `url`, `img`, `description` FROM `web_article` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC, `id` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end other*/
	
	
	
	
	
	
	
	
	
	
	
	public function _link_detail($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$sql = "SELECT `url` FROM `web_menu` WHERE `id`='".$str[$i]."'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		return $row['url'];
	}
	
	/*contact*/
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