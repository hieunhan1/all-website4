<?php
class modelHome extends modelDB{
	public function _selectMenuType($type, $lang, $limit=1){
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `type_id`='{$type}' LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _listMenuHome(){
		$sql = "SELECT `id`, `name`, `url`, `img`, `title`, `description` FROM `web_menu` WHERE `status`=1 AND `other`='1' ORDER BY `parent`, `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listProductHome($id, $limit=5){
		$sql = "SELECT `id`, `name`, `url`, `code`, `img`, `price`, `price_cost` FROM `web_product` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
}
?>