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
	public function _checkUser($u,$p){
		$p = md5($p);
		$sql = "SELECT `id` FROM `web_users` WHERE `username`='{$u}' AND `password`='{$p}' AND `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) return TRUE; else return FALSE;
	}
	public function _changePassword($u,$p){
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
		if($type==1){
			$type_name = 'create';
			$sql = $this->_create($table, $fields, $values);
		}elseif( $type==2 && is_numeric($id) ){
			$type_name = 'update';
			//$content = $this->_backupData($id, $name, $table);
			$sql = $this->_update($table, $fields, $values, $id);
		}else return FALSE;
		
		if(!$this->db->query($sql)){
			echo $this->db->error;
			return FALSE;
		}else{
			if($type==1){
				$id = $this->db->insert_id;
				//$this->_backupData($id, $name, $table);
			}
			//$this->_webLog($name, $type_name, $table, $_SESSION['adminUser'], $content, $_SESSION['adminLang']);
			return TRUE;
		}
	}
	
	public function _deleteOne($table, $id, $user, $lang){
		//$content = $this->_backupData($id, $name, $table);
		$sql = "DELETE FROM `{$table}` WHERE `id`='{$id}' ";
		$this->db->query($sql);
		//$this->_webLog($name, 'delete', $table, $user, $content, $lang);
	}
	
	public function _statusOne($name, $table, $id, $status, $user, $lang){
		$sql = "UPDATE `{$table}` SET `status`='{$status}' WHERE `id`='{$id}' ";
		$this->db->query($sql);
		//$this->_webLog($name, 'status', $table, $user, $status, $lang);
	}
	
	/*web_log
	Fields & values:	fields%%%values
	Giá trị field:		,
	Giá trị nội dung:	%%%
	*/
	public function _backupData($id, &$name, $table){
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}'";
		$result = $this->db->query($sql);
		$row = $result->fetch_assoc();
		$name = $row['name'];
		$row_keys = array_keys($row);
		$row_values = array_values($row);
		for($i=0; $i<count($row_keys); $i++){
			$str_keys .= "`{$row_keys[$i]}`,";
			$str_values .= "{$row_values[$i]}%%%";
		}
		$str_keys = trim($str_keys,',');
		$str_values = trim($str_values,'%%%');
		return $str_keys.'fields%%%values'.$str_values;
	}
	public function _restoreData($id){
		$sql = "SELECT `action`,`table`,`content` FROM `web_logs` WHERE `status`=0 AND `id`='{$id}'";
		$result = $this->db->query($sql);
		$row = $result->fetch_assoc();
		if($row['action']=='delete'){
			$data = explode('fields%%%values', $row['content']);
			$data_keys = explode(',', $data[0]);
			$data_values = explode('%%%', $data[1]);
			for($i=0; $i<count($data_keys); $i++){
				$str_keys .= "{$data_keys[$i]},";
				$str_values .= "'{$data_values[$i]}',";
			}
			$str_keys = trim($str_keys, ',');
			$str_values = trim($str_values, ',');
			$str_sql = "INSERT INTO `{$row['table']}` ({$str_keys}) VALUES ({$str_values})";
		}elseif($row['action']=='update'){
			$data = explode('fields%%%values', $row['content']);
			$data_keys = explode(',', $data[0]);
			$data_values = explode('%%%', $data[1]);
			for($i=0; $i<count($data_keys); $i++){
				if($data_keys[$i]!='`id`') $str_set .= "{$data_keys[$i]}='{$data_values[$i]}',";
				else $id_restore = $data_values[$i];
			}
			$str_set = trim($str_set, ',');
			$str_sql = "UPDATE `{$row['table']}` SET {$str_set} WHERE id='{$id_restore}'";
		}else return false;
		
		if(!$this->db->query($str_sql)) die($this->db->error);
		else{
			$this->db->query("UPDATE `web_logs` SET `status`=1,`date_restore`='".time()."',`user_restore`='".$_SESSION['admin_user']."' WHERE id='{$id}' ");
			return true;
		}
	}
	public function _webLog($name, $action, $table, $user, $content, $lang){
		$time = time();
		$sql = "INSERT INTO `web_logs` VALUES (NULL, '{$name}', '{$action}', '{$table}', '{$time}', '{$user}', '{$content}', '{$lang}', '0', NULL, NULL)";
		$this->db->query($sql);
	}
	/*end web_log*/
	
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
		$sql = "SELECT `id`,concat(`name`, ' - ',`email`) as `name` FROM `web_dangky_nhanvien` WHERE `status`=1 ORDER BY `datetime` DESC";
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
	
	/*ajax*/
	public function _ajaxNumberItem($table){
		$sql = "SELECT count(*) FROM {$table} WHERE status=0";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	/*end ajax*/
	
	/*function*/
	
	/*end function*/
}