<?php
include_once('class/db.php');
class model_web extends db{
	public function _web_config($lang){
		$sql = "SELECT * FROM `web_config` WHERE `delete`=0 AND status=1 AND lang='{$lang}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
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
	
}//class