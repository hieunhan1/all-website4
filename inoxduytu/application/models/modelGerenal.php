<?php
class modelGerenal extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _selectMenuType($type, $lang, $limit=1){
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `type_id`='{$type}' LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _listWebMenuType($id=NULL){
		if($id==NULL) $where=''; else $where="AND `id`='{$id}'";
		$sql = "SELECT `id`,`name`,`table_data`,`url_img`,`url_img_thumb` FROM `web_menu_type` WHERE `status`=1 {$where}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['id']] = array(
				'id'=>$row['id'],
				'name'=>$row['name'],
				'table_data'=>$row['table_data'],
				'url_img'=>$row['url_img'],
				'url_img_thumb'=>$row['url_img_thumb'],
			);
		}
		return $data;
	}
	
	public function _menuIdOrAlias($data){
		if(!is_numeric($data)) $str="AND `name_alias`='{$data}'";
		else $str="AND `id`='{$data}'";
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 {$str} LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
	public function _listMenu($lang, $parent, $position=NULL){
		if($position!=NULL) $position="AND `position_id` LIKE '%,{$position},%'";
		$sql = "SELECT `id`, `name`, `url`, `img`, `title` FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `parent`='{$parent}' {$position} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listMenuPosition($lang, $position){
		$sql = "SELECT `id`, `name`, `url`, `img`, `title` FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `position_id` LIKE '%,{$position},%' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _menuRoot($parent, $arr=NULL){
		if($arr==NULL) $arr=array();
		$row = $this->_menuIdOrAlias($parent);
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name'], 'url'=>$row['url']);
		if($row['parent']==0) return array_reverse($arr);
		return $this->_menuRoot($row['parent'], $arr);
	}
	
	public function _listParentMenu($id, $select=NULL){
		if($select==NULL) $select='`id`, `name`, `url`, `img`, `title`';
		else $select='`id`, `name`, `url`, `img`, `title`, '.$select;
		$sql = "SELECT {$select} FROM `web_menu` WHERE `status`=1 AND `parent`='{$id}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listSliderBanner($lang, $position=NULL, $menu_id=NULL){
		if($lang!='') $lang="AND `lang`='{$lang}'";
		if($menu_id!=NULL) $menu_id = "AND `menu_id` LIKE '%,{$menu_id},%'"; else $menu_id = '';
		if($position!=NULL) $position = "AND `position_id`='{$position}'"; else $position = '';
		$sql = "SELECT `name`, `img`, `url`, `info` FROM `web_slider_banner` WHERE `status`=1 {$position} {$lang} {$menu_id} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listDetailMenu($table, $id, $limit=NULL, $select=NULL){
		if($select==NULL) $select='`id`, `name`, `url`, `img`, `description`, `datetime`';
		else  $select='`id`, `name`, '.$select;
		if($limit!=NULL) $limit="LIMIT {$limit}"; else $limit='';
		$sql = "SELECT {$select} FROM `{$table}` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listDataTable($table, $idMenu, &$totalRows, $perPage=10, $startRow=0, $select=NULL, $where=NULL, $orderBy=NULL){
		if($select==NULL) $select='`id`, `name`, `name_alias`, `url`, `img`, `description`, `datetime`';
		else $select = '`id`, `name`, '.$select;
		$select = trim($select, ',');
		$orderBy= $orderBy.',`datetime` DESC';
		$orderBy = trim($orderBy,',');
		$where = "`status`=1 AND `menu_id` LIKE '%,{$idMenu},%' AND ".$where;
		$where = trim($where,'AND ');
		
		$sql = "SELECT {$select} FROM `{$table}` WHERE {$where} ORDER BY {$orderBy} LIMIT {$startRow}, {$perPage}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `{$table}` WHERE {$where}";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalRows=$row[0];
		
		return $data;
	}
	
	public function _listTagsKeyword($lang){
		$sql = "SELECT * FROM `web_tags` WHERE `status`=1 AND `lang`='{$lang}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _viewDetail($table, $alias){
		$sql = "SELECT * FROM `{$table}` WHERE `status`=1 AND `name_alias`='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _viewDetailOther($table, $id, $idMenu, $select=NULL, $where=NULL, $limit=5){
		if($select==NULL) $select='`id`, `name`, `url`'; else $select='`id`, `name`, '.$select;
		$sql = "SELECT {$select} FROM `{$table}` WHERE `status`=1 AND `id`<>'{$id}' AND `menu_id` LIKE '%,{$idMenu},%' {$where} ORDER BY `id` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	/*other*/
	public function _listMenuHome($lang){
		$sql = "SELECT `id`, `name`, `url`, `img`, `title`, `description` FROM `web_menu` WHERE `status`=1 AND `other`='1' AND `lang`='{$lang}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _viewDetailID($table, $id){
		$sql = "SELECT * FROM `{$table}` WHERE `status`=1 AND `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	/*end other*/
}
?>