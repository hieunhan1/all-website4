<?php
include_once('model_db.php');
class model_admin extends db{
	public function _xuly_dangnhap($u,$p){
		$u = strip_tags($u);
		$p = md5($p);
		$sql = "SELECT users_id,users_name,users_username,users_rule_view,users_rule_action FROM web_users WHERE users_username='{$u}' AND users_password='{$p}' AND users_status=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) {
			$row = $result->fetch_assoc();
			$_SESSION['admin_id']			= $row['users_id'];
			$_SESSION['admin_name']			= $row['users_name'];
			$_SESSION['admin_user']			= $row['users_username'];
			$_SESSION['admin_rule_view']	= $row['users_rule_view'];
			$_SESSION['admin_rule_action']	= $row['users_rule_action'];
			return TRUE;
		} else {
			return FALSE;
		}
	}
	
	public function _kiem_tra_user($u,$p){
		$p = md5($p);
		$sql = "SELECT users_id FROM web_users WHERE users_username='{$u}' AND users_password='{$p}' AND users_status=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) return TRUE; else return FALSE;
	}
	
	public function _change_password($u,$p){
		$p = md5($p);
		$sql = "UPDATE web_users SET users_password='{$p}' WHERE users_username='{$u}' ";
		$this->db->query($sql);
	}
	
	public function _reset_password($user,$id_user_reset,$pass_default){
		$p = md5($pass_default);
		$sql = "UPDATE web_users SET users_password='{$p}' WHERE users_id='{$id_user_reset}' ";
		$this->db->query($sql);
	}

	public function _web_languages(){
		$sql = "SELECT language_id,language_name,language_code FROM web_language WHERE language_status=1 ORDER BY language_order ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _web_menu_admin(){
		$sql = "SELECT menu_admin_id,menu_admin_name,menu_admin_url,menu_admin_url_img,menu_admin_other,menu_admin_ajax FROM web_menu_admin WHERE menu_admin_status=1 ORDER BY menu_admin_order";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _navigator($url_action){
		$sql = "SELECT menu_admin_id,menu_admin_name FROM web_menu_admin WHERE menu_admin_status=1 AND menu_admin_url='{$url_action}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _select_field_table($select, $table, $where, $order_by, $per_page=30, $startrow=0, &$totalrows){	
		$sql = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY {$order_by} LIMIT {$startrow}, {$per_page}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach($result as $row) $data[] = $row;
		$sql = "SELECT count(*) FROM {$table} WHERE {$where}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		$totalrows = $row[0];
		return $data;
	}

	public function _pageslist($baseurl, $totalrows, $offset ,$per_page, $currentpage){
		$totalpages = ceil($totalrows/$per_page);
		if($totalpages==1) return false;
		$from = $currentpage-$offset;
		$to   = $currentpage+$offset;
		if($from <= 0) $from = 1; 
		if($to > $totalpages) $to = $totalpages;
		$links = '';
		for($j=$from; $j<=$to; $j++){
			if($j==$currentpage) $links = $links."<span>{$j}</span>"; 
			else $links = $links."<a href='{$baseurl}&page={$j}'>{$j}</a>"; 	
		}
		return $links;
	}
	
	public function _view_edit_detail($table,$id){
		$table_field = $this->_table_field($table);
		$sql = "SELECT * FROM {$table} WHERE {$table_field}_id='{$id}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _get_sql($type, $table, $fields, $values, $user, $id){
		if($type==1){
			$sql = $this->_create($table, $fields, $values, $user);
		}elseif( $type==2 && is_numeric($id) ){
			$sql = $this->_update($table, $fields, $values, $user, $id);
		}else return FALSE;
		
		if(!$this->db->query($sql)){
			echo $this->db->error;
			return FALSE;
		}
		return TRUE;
	}
	
	public function _create($table, $fields, $values){
		$toal_field = count($fields);
		for($i=0; $i < $toal_field-1; $i++){
			$str_field .= "{$fields[$i]},";
		}
		$str_field = trim($str_field,',');
		for($i=0; $i < $toal_field-1; $i++){
			$str_value .= "'{$values[$i]}',";
		}
		$str_value = trim($str_value,',');
		$str = "INSERT INTO {$table} ( {$str_field} ) VALUES ( {$str_value} )";
		return $str;
	}
	
	public function _update($table, $fields, $values, $id){
		$toal_field = count($fields);
		for($i=0; $i < $toal_field-1; $i++){
			$str .= "{$fields[$i]}='{$values[$i]}',";
		}
		$str = trim($str,',');
		$table_field = $this->_table_field($table);
		$str = "UPDATE {$table} SET {$str} WHERE {$table_field}_id='{$id}' ";
		return $str;
	}
	
	public function _delete_one($table, $id, $user){
		$table_field = $this->_table_field($table);
		$sql = "DELETE FROM {$table} WHERE {$table_field}_id='{$id}' ";
		$this->db->query($sql);
	}
	
	public function _status_one($table, $id, $status, $user){
		$table_field = $this->_table_field($table);
		$sql = "UPDATE {$table} SET {$table_field}_status='{$status}' WHERE {$table_field}_id='{$id}' ";
		$this->db->query($sql);
	}
	
	/*log data*/
	public function _web_logs($name, $type, $action){
		$date = $this->_date_time_vietnam();
		$sql = "INSERT INTO `web_logs` (`logs_id`, `logs_name`, `logs_type`, `logs_action`, `logs_datetime`) VALUES (NULL, '{$name}', '{$type}', '{$action}', '{$date}')";
		if(!$this->db->query($sql)) die($this->db->error);
		return $this->db->insert_id;
	}
	public function _web_logs_recovery($data, $id_logs){
		$sql = "INSERT INTO `web_logs_recovery` (`logs_recovery_id`, `logs_recovery_data`, `id_logs`) VALUES (NULL, '{$data}', '{$id_logs}')";
		if(!$this->db->query($sql)) die($this->db->error);
	}
	/*end log data*/
	
	/*web_menu*/
	public function _web_menu($parent_id, $style, $arr, $where=''){
		if(!$arr) $arr = array();
		$sql = "SELECT menu_id,menu_name,menu_status,menu_order FROM web_menu
		WHERE menu_parent='{$parent_id}' {$where} ORDER BY menu_order ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		foreach ($result as $row){
			$arr[] = array(
				'id'=>$row['menu_id'],
				'name'=>$style.$row['menu_name'],
				'order'=>$style.$row['menu_order'],
				'status'=>$row['menu_status']
			);
			$arr = $this->_web_menu($row['id'], $style.'-- ', $arr, $where);
		}
		return $arr;
	}
	
	public function _web_menu_position(){
		$sql = "SELECT menu_position_id,menu_position_name FROM web_menu_position WHERE menu_position_status=1 ORDER BY menu_position_order";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _web_menu_type(){
		$sql = "SELECT menu_type_id,menu_type_name FROM web_menu_type WHERE menu_type_status=1 ORDER BY menu_type_order";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _web_slider_banner_position(){
		$sql = "SELECT slider_banner_position_id,slider_banner_position_name FROM web_slider_banner_position WHERE slider_banner_position_status=1 ORDER BY slider_banner_position_id";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn vị trí --');
		foreach($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _menu_id($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$sql = "SELECT menu_url FROM web_menu WHERE menu_id='".$str[$i]."'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		return $row['menu_url'];
	}
	/*end web_menu*/
	
	/*order*/
	public function _web_ds_tinhthanh(){
		$sql = "SELECT listcity_id,listcity_name FROM web_listcity WHERE listcity_status=1 ORDER BY listcity_order DESC, listcity_name";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn tỉnh/thành --');
		foreach($result as $row) $data[] = $row;
		return $data;
	}
	public function _web_ds_quanhuyen($id_listcity){
		$sql = "SELECT listdistricts_id,listdistricts_name FROM web_listdistricts WHERE listdistricts_status=1 AND id_listcity='{$id_listcity}' ORDER BY listdistricts_order";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn quận/huyện --');
		foreach($result as $row) $data[] = $row;
		return $data;
	}
	public function _web_product_order_detail($id){
		$sql = "SELECT * FROM web_product_order_detail WHERE product_order_detail_status=1 AND id_order='{$id}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach($result as $row) $data[] = $row;
		return $data;
	}
	/*end order*/
	
	/*ajax*/
	public function _ajax_number_khachhang($table){
		$table_field = $this->_table_field($table);
		$sql = "SELECT count(*) FROM {$table} WHERE {$table_field}_status=0";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	/*end ajax*/
	
}//class