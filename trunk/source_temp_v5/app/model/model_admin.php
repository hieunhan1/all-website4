<?php
include_once('model_db.php');
class model_admin extends db{
	public function _xuly_dangnhap($u,$p){
		$u = strip_tags($u);
		$p = md5($p);
		$sql = "SELECT `id`,`name`,`username`,`rule_view`,`rule_action` FROM `web_users` WHERE `username`='{$u}' AND `password`='{$p}' AND `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) {
			$row = $result->fetch_assoc();
			$_SESSION['admin_id']			= $row['id'];
			$_SESSION['admin_name']			= $row['name'];
			$_SESSION['admin_user']			= $row['username'];
			$_SESSION['admin_rule_view']	= $row['rule_view'];
			$_SESSION['admin_rule_action']	= $row['rule_action'];
			return TRUE;
		} else {
			return FALSE;
		}
	}
	
	public function _kiem_tra_user($u,$p){
		$p = md5($p);
		$sql = "SELECT `id` FROM `web_users` WHERE `username`='{$u}' AND `password`='{$p}' AND `status`=1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) return TRUE; else return FALSE;
	}
	
	public function _change_password($u,$p){
		$p = md5($p);
		$sql = "UPDATE `web_users` SET `password`='{$p}' WHERE `username`='{$u}' ";
		$this->db->query($sql);
	}
	
	public function _reset_password($id_user_reset,$pass_default){
		$p = md5($pass_default);
		$sql = "UPDATE `web_users` SET `password`='{$p}' WHERE `id`='{$id_user_reset}' ";
		$this->db->query($sql);
	}
	
	public function _list_username(){
		$sql = "SELECT `username` FROM `web_users` WHERE `status`=1 ORDER BY `username`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _web_menu_admin(){
		$sql = "SELECT `id`,`name`,`url`,`url_img`,`other`,`ajax` FROM `web_menu_admin` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _navigator($url_action){
		$sql = "SELECT `id`,`name` FROM `web_menu_admin` WHERE `status`=1 AND url='{$url_action}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}

	public function _web_languages(){
		$sql = "SELECT `id`,`name`,`code` FROM `web_language` WHERE `status`=1 ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _select_field_table($select, $table, $where, $order_by, $per_page=30, $startrow=0, &$totalrows){	
		$sql = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY {$order_by} LIMIT {$startrow},{$per_page}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM {$table} WHERE {$where}";
		$result = $this->db->query($sql);
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
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _get_sql($type, $table, $fields, $values, $id=NULL){
		if($type==1){
			$type_name = 'create';
			$sql = $this->_create($table, $fields, $values);
		}elseif( $type==2 && is_numeric($id) ){
			$type_name = 'update';
			$content = $this->_backup_data($id, $name, $table);
			$sql = $this->_update($table, $fields, $values, $id);
		}else return FALSE;
		
		if(!$this->db->query($sql)){
			echo $this->db->error;
			return FALSE;
		}else{
			if($type==1){
				$id = $this->db->insert_id;
				$this->_backup_data($id, $name, $table);
			}
			$this->_web_log($name,$type_name,$table,$_SESSION['admin_user'],$content,$_SESSION['admin_language']);
			return TRUE;
		}
	}
	
	public function _create($table, $fields, $values){
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			if($fields[$i]!='datetime'){
				$str_field .= "`{$fields[$i]}`,";
				$str_value .= "'".$this->_change_dau_nhay($values[$i])."',";
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
		$total_field = count($fields);
		for($i=0; $i < $total_field-1; $i++){
			if($fields[$i]!='datetime') $str .= "`{$fields[$i]}`='".$this->_change_dau_nhay($values[$i])."',";
			else $str .= "`{$fields[$i]}`='".strtotime($values[$i])."',";
		}
		$str = trim($str,',');
		$str = "UPDATE `{$table}` SET {$str} WHERE `id`='{$id}' ";
		return $str;
	}
	
	public function _delete_one($table, $id, $user, $lang){
		$content = $this->_backup_data($id, $name, $table);
		$sql = "DELETE FROM `{$table}` WHERE `id`='{$id}' ";
		$this->db->query($sql);
		$this->_web_log($name,'delete',$table,$user,$content,$lang);
	}
	
	public function _status_one($name, $table, $id, $status, $user, $lang){
		$sql = "UPDATE `{$table}` SET `status`='{$status}' WHERE `id`='{$id}' ";
		$this->db->query($sql);
		$this->_web_log($name,'status',$table,$user,$status,$lang);
	}
	
	/*web_log
	Fields & values:	fields%%%values
	Giá trị field:		,
	Giá trị nội dung:	%%%
	*/
	public function _backup_data($id, &$name, $table){
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
	public function _restore_data($id){
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
	public function _web_log($name, $action, $table, $user, $content, $lang){
		$time = time();
		$sql = "INSERT INTO `web_logs` VALUES (NULL, '{$name}', '{$action}', '{$table}', '{$time}', '{$user}', '{$content}', '{$lang}', '0', NULL, NULL)";
		$this->db->query($sql);
	}
	/*end web_log*/
	
	/*web_menu*/
	public function _web_menu($parent, $style, $arr, $where=''){
		if(!$arr) $arr = array();
		$sql = "SELECT `id`,`name`,`url`,`order`,`status` FROM `web_menu`
		WHERE parent='{$parent}' {$where} ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		while($row = $result->fetch_assoc()){
			$arr[] = array(
				'id'=>$row['id'],
				'name'=>$style.$row['name'],
				'url'=>$row['url'],
				'order'=>$style.$row['order'],
				'status'=>$row['status'],
			);
			$arr = $this->_web_menu($row['id'], $style.'-- ', $arr, $where);
		}
		return $arr;
	}
	
	public function _web_menu_position(){
		$sql = "SELECT `id`,`name` FROM `web_menu_position` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _web_menu_type(){
		$sql = "SELECT `id`,`name` FROM `web_menu_type` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _web_slider_banner_position(){
		$sql = "SELECT `id`,`name` FROM `web_slider_banner_position` WHERE `status`=1 ORDER BY `id`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn vị trí --');
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _menu_id($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$sql = "SELECT `url` FROM `web_menu` WHERE `id`='".$str[$i]."'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		return $row['url'];
	}
	/*end web_menu*/
	
	/*order*/
	public function _web_listcity(){
		$sql = "SELECT `id`,`name` FROM `web_listcity` WHERE `status`=1 ORDER BY `order` DESC, `name`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn tỉnh/thành --');
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _web_listdistricts($city_id){
		$sql = "SELECT `id`,`name` FROM `web_listdistricts` WHERE `status`=1 AND listcity_id='{$city_id}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		$data[] = array('id'=>0, 'name'=>'-- Chọn quận/huyện --');
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _web_product_order_detail($id){
		$sql = "SELECT * FROM `web_product_order_detail` WHERE `status`=1 AND order_id='{$id}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end order*/
	
	/*ajax*/
	public function _ajax_number_item($table){
		$sql = "SELECT count(*) FROM {$table} WHERE status=0";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	/*end ajax*/
	
	/*function*/
	
	/*end function*/
}//class