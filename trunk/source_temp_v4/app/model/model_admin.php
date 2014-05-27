<?php
include_once('class/db.php');
class model_admin extends db{
	public function xuly_dangnhap($u,$p){
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
	
	public function web_menu_admin(){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh`,`other`,`ajax` FROM `web_menu_admin` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function navigator($url_action){
		$sql = "SELECT `id`,`name` FROM `web_menu_admin` WHERE `status`=1 AND url='{$url_action}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}

	public function languages(){
		$sql = "SELECT `id`,`name`,`ma` FROM `web_language` WHERE `status`=1 ORDER BY `order` ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function select_field_table($select, $table, $where, $per_page=30, $startrow=0, &$totalrows){	
		$sql = "SELECT {$select} FROM {$table} WHERE {$where} ORDER BY id DESC LIMIT $startrow, $per_page";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach($result as $row) $data[] = $row;
		
		$sql = "SELECT count(*) FROM {$table} WHERE {$where}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		$totalrows = $row[0];
		return $data;
	}

	public function pageslist($baseurl, $totalrows, $offset ,$per_page, $currentpage){
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

}//class