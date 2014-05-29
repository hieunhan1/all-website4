<?php
include_once('class/db.php');
class model_admin extends db{
	public function _xuly_dangnhap($u,$p){
		$u = strip_tags($u);
		$p = md5($p);
		$sql = "SELECT id,name,username,quyen_xem,quyen_action FROM web_users WHERE username='{$u}' AND password='{$p}' AND status=1 AND `delete`=0";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		if($result->num_rows==1) {
			$row = $result->fetch_assoc();
			$_SESSION['admin_id']			= $row['id'];
			$_SESSION['admin_name']			= $row['name'];
			$_SESSION['admin_user']			= $row['username'];
			$_SESSION['admin_quyen_xem']	= $row['quyen_xem'];
			$_SESSION['admin_quyen_action']	= $row['quyen_action'];
			return TRUE;
		} else {
			return FALSE;
		}
	}
	
	public function _web_menu_admin(){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh`,`other`,`ajax` FROM `web_menu_admin` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _navigator($url_action){
		$sql = "SELECT `id`,`name` FROM `web_menu_admin` WHERE `status`=1 AND url='{$url_action}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}

	public function _web_languages(){
		$sql = "SELECT `id`,`name`,`ma` FROM `web_language` WHERE `status`=1 ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _select_field_table($select, $table, $where, $order_by, $per_page=30, $startrow=0, &$totalrows){	
		$sql = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY {$order_by} LIMIT $startrow, $per_page";
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
		$sql = "SELECT * FROM `{$table}` WHERE `delete`=0 AND `id`='{$id}' ";
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
	
	public function _create($table, $fields, $values, $user){
		$date = date('Y-m-d H:i:s');
		$toal_field = count($fields);
		
		for($i=0; $i < $toal_field-1; $i++){
			$str_field .= "`{$fields[$i]}`,";
		}
		$str_field .= "`date_create`,`user_create`";
		
		for($i=0; $i < $toal_field-1; $i++){
			$str_value .= "'{$values[$i]}',";
		}
		$str_value .= "'{$date}','{$user}'";
		
		$str = "INSERT INTO `{$table}` ( {$str_field} ) VALUES ( {$str_value} )";
		return $str;
	}
	
	public function _update($table, $fields, $values, $user, $id){
		$date = date('Y-m-d H:i:s');
		$toal_field = count($fields);
		
		for($i=0; $i < $toal_field-1; $i++){
			$str .= "`{$fields[$i]}`='{$values[$i]}',";
		}
		$str .= "`date_update`='{$date}',`user_update`='{$user}'";
		
		$str = "UPDATE `{$table}` SET {$str} WHERE `delete`=0 AND `id`='{$id}' ";
		return $str;
	}
	
	public function _delete_one($table, $id, $user){
		$date = date('Y-m-d H:i:s');
		$sql = "UPDATE `{$table}` SET `delete`=1, user_update='{$user}', date_update='{$date}' WHERE `id`='{$id}' ";
		$this->db->query($sql);
	}
	
	public function _status_one($table, $id, $status, $user){
		$date = date('Y-m-d H:i:s');
		$sql = "UPDATE `{$table}` SET `status`='{$status}', user_update='{$user}', date_update='{$date}' WHERE `id`='{$id}' ";
		$this->db->query($sql);
	}
	
	public function _web_menu($parent_id, $style, $arr, $where=''){
		if(!$arr) $arr = array();
		$sql = "SELECT `id`,`name`,`status`,`order`,`date_create`,`date_update`,`user_create`,`user_update` FROM `web_menu`
		WHERE `delete`=0 AND parent_id='{$parent_id}' {$where} ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		foreach ($result as $row){
			$arr[] = array(
				'id'=>$row['id'],
				'name'=>$style.$row['name'],
				'order'=>$style.$row['order'],
				'status'=>$row['status'],
				'date_create'=>$row['date_create'],
				'date_update'=>$row['date_update'],
				'user_create'=>$row['user_create'],
				'user_update'=>$row['user_update']
			);
			$arr = $this->_web_menu($row['id'], $style.'-- ', $arr, $where);
		}
		return $arr;
	}
}//class