<?php
class modelTuyendung extends modelDB{
	public function _viewDetail($alias){
		$sql = "SELECT * FROM `web_tuyendung` WHERE `status`=1 AND `name_alias`='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _viewTuyenDungCty($id){
		$sql = "SELECT * FROM `web_tuyendung_cty` WHERE `status`=1 AND `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _viewOtherPost($lang, $id, $select=NULL, $where=NULL, $orderby=NULL, $limit=5){
		$sql = "SELECT `id`, `name`, `url` FROM `web_tuyendung` WHERE `status`=1 AND `lang`='{$lang}' AND `id`<>'{$id}' {$where} ORDER BY {$orderby} `id` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
}