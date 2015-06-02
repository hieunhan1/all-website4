<?php
class modelHome extends modelDB{
	public function _selectMenuType($type, $lang, $limit=1){
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `type_id`='{$type}' LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _listMenuHome($id){
		$sql = "SELECT `id`, `name`, `url`, `img`, `title`, `description` FROM `web_menu` WHERE `status`=1 AND `parent`='{$id}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listDetailHome($id, $limit=1){
		$sql = "SELECT `id`, `name`, `url`, `img`, `description` FROM `web_article` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
}
?>