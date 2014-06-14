<?php
include_once('class/db.php');
class model_web extends db{
	public function _web_config($lang){
		$sql = "SELECT * FROM `web_config` WHERE `delete`=0 AND status=1 AND lang='{$lang}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _web_menu($lang, $parent, $position){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh` FROM `web_menu` WHERE `delete`=0 AND `status`=1 AND `lang`='{$lang}' AND `parent_id`='{$parent}' AND `position_id` LIKE '%,{$position},%' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
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
	
	public function _web_slider_banner($position, $lang, $menu_id=NULL){
		if($menu_id!=NULL) $menu_id = "AND `menu_id` LIKE '%,{$menu_id},%'"; else $menu_id = '';
		$sql = "SELECT `name`,`url_hinh`,`url` FROM `web_slider_banner` WHERE `delete`=0 AND `status`=1 AND `position_id`='{$position}' AND lang='{$lang}' {$menu_id} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	/*home*/
	public function _home_about($id){
		$sql = "SELECT `name`,`content` FROM `web_article` WHERE `delete`=0 AND `status`=1 AND `other`=1 AND menu_id LIKE '%,{$id},%' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _home_danhmuc_product($lang){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh` FROM `web_menu` WHERE `delete`=0 AND `status`=1 AND `lang`='{$lang}' AND `other`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	public function _home_products($id){
		$sql = "SELECT `id`,`name`,`name_alias`,`url_hinh`,`giaban`,`giagoc` FROM `web_product` WHERE `delete`=0 AND `status`=1 AND `other`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `ngay_dang` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	/*end home*/
	
	public function _detail_article($alias){
		$sql = "SELECT * FROM `web_articles` WHERE `delete`=0 AND status=1 AND name_alias='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
}//class