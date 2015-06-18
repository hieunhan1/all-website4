<?php
class modelAdmin extends modelDB{
	/*user*/
	public function _xuLyDangNhap($u, $p, $group_id){
		$u = strip_tags($u);
		$p = md5($p);
		$sql = "SELECT `id`,`name`,`username`,`rule_view`,`rule_action` FROM `web_users` WHERE `username`='{$u}' AND `password`='{$p}' AND `group_id`='{$group_id}' AND `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) {
			$row = $result->fetch_assoc();
			$_SESSION['adminId'] = $row['id'];
			$_SESSION['adminName'] = $row['name'];
			$_SESSION['adminUser'] = $row['username'];
			$_SESSION['adminRuleView'] = $row['rule_view'];
			$_SESSION['adminRuleAction'] = $row['rule_action'];
			return TRUE;
		} else {
			return FALSE;
		}
	}
	public function _checkUser($u, $p){
		$p = md5($p);
		$sql = "SELECT `id` FROM `web_users` WHERE `username`='{$u}' AND `password`='{$p}' AND `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) return TRUE; else return FALSE;
	}
	public function _changePassword($u, $p){
		$p = md5($p);
		$sql = "UPDATE `web_users` SET `password`='{$p}' WHERE `username`='{$u}' ";
		$this->db->query($sql);
		return TRUE;
	}
	public function _resetPassword($id,$pass){
		$pass = md5($pass);
		$sql = "UPDATE `web_users` SET `password`='{$pass}' WHERE `id`='{$id}' ";
		$this->db->query($sql);
		return TRUE;
	}
	public function _listUsername(){
		$sql = "SELECT `username` FROM `web_users` WHERE `status`=1 ORDER BY `username`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _listUsersGroup(){
		$sql = "SELECT * FROM `web_users_group` ORDER BY `id`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[$row['id']] = $row;
		return $data;
	}
	/*end user*/
	
	public function _listMenuAdmin(){
		$sql = "SELECT `id`,`name`,`url`,`img`,`other`,`ajax` FROM `web_menu_admin` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _navigator($url){
		$sql = "SELECT `id`,`name` FROM `web_menu_admin` WHERE `status`=1 AND `url`='{$url}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}

	public function _listLanguages(){
		$sql = "SELECT `id`,`name`,`code` FROM `web_language` WHERE `status`=1 ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _selectFieldTable($select, $table, $where, $orderBy, $perPage=30, $startRow=0, &$totalRows){	
		$sql = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY {$orderBy} LIMIT {$startRow}, {$perPage}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM {$table} WHERE {$where}";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalRows = $row[0];
		return $data;
	}
	
	public function _viewEditDetail($table,$id){
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _create($table, $fields, $values){
		$str_field='';
		$str_value='';
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			if(!preg_match("/datetime/", $fields[$i])){
				$str_field .= "`{$fields[$i]}`,";
				$str_value .= "'".$this->_changeDauNhay($values[$i])."',";
			}else{
				$str_field .= "`{$fields[$i]}`,";
				$str_value .= "'".strtotime($values[$i])."',";
			}
		}
		$str_field = trim($str_field,',');
		$str_value = trim($str_value,',');
		$str = "INSERT INTO `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		return $str;
	}
	
	public function _update($table, $fields, $values, $id){
		$str='';
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			if(!preg_match("/datetime/", $fields[$i])) $str .= "`{$fields[$i]}`='".$this->_changeDauNhay($values[$i])."',";
			else $str .= "`{$fields[$i]}`='".strtotime($values[$i])."',";
		}
		$str = trim($str,',');
		$str = "UPDATE `{$table}` SET {$str} WHERE `id`='{$id}' ";
		return $str;
	}
	
	public function _getSql($type, $table, $fields, $values, $id=NULL){
		$backup = new modelBackupRestore;
		if($type==1){
			$content='';
			$action = 'create';
			$sql = $this->_create($table, $fields, $values);
		}elseif( $type==2 && is_numeric($id) ){
			$content = $backup->_backupData($id, $name, $table);
			$action = 'update';
			$sql = $this->_update($table, $fields, $values, $id);
		}else return FALSE;
		
		if(!$this->db->query($sql)){
			die($this->db->error);
			return FALSE;
		}else{
			if($type==1){
				$id = $this->db->insert_id;
				$backup->_backupData($id, $name, $table);
			}
			$backup->_webLog($name, $action, $table, $_SESSION['adminUser'], $content, $_SESSION['adminLang']);
			return TRUE;
		}
	}
	
	/*web_menu*/
	public function _webMenu($parent, $style, $arr, $where=''){
		if(!$arr) $arr = array();
		$sql = "SELECT `id`,`name`,`url`,`order`,`status` FROM `web_menu`
		WHERE `parent`='{$parent}' {$where} ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		while($row = $result->fetch_assoc()){
			$arr[] = array(
				'id'=>$row['id'],
				'name'=>$style.$row['name'],
				'url'=>$row['url'],
				'order'=>$style.$row['order'],
				'status'=>$row['status'],
			);
			$arr = $this->_webMenu($row['id'], $style.'-- ', $arr, $where);
		}
		return $arr;
	}
	public function _listMenuPosition(){
		$sql = "SELECT `id`,`name` FROM `web_menu_position` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _listMenuType(){
		$sql = "SELECT `id`,`description` as `name` FROM `web_menu_type` WHERE `status`=1 AND `other`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _urlImageMenuType($table){
		$sql = "SELECT `url_img`,`url_img_thumb` FROM `web_menu_type` WHERE `status`=1 AND `table_data`='{$table}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	/*end web_menu*/
	
	public function _listSliderBannerPosition(){
		$sql = "SELECT `id`,`name` FROM `web_slider_banner_position` WHERE `status`=1 ORDER BY `id`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[$row['id']] = $row;
		return $data;
	}
	
	public function _listDanhSachNhanVien(){
		$sql = "SELECT `id`,concat(`name`, ' - ',`email`) as `name` FROM `web_dangky_nhanvien` WHERE `status`=1 ORDER BY `datetime`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[$row['id']] = $row;
		return $data;
	}
	
	/*order*/
	public function _webListcity(){
		$sql = "SELECT `id`,`name` FROM `web_listcity` WHERE `status`=1 ORDER BY `order` DESC, `name`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn tỉnh/thành --');
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _webListdistricts($city_id){
		$sql = "SELECT `id`,`name` FROM `web_listdistricts` WHERE `status`=1 AND city_id='{$city_id}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn quận/huyện --');
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _webProductOrderDetail($id){
		$sql = "SELECT * FROM `web_product_order_detail` WHERE `status`=1 AND order_id='{$id}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end order*/
	
	/*function*/
	
	/*end function*/
}