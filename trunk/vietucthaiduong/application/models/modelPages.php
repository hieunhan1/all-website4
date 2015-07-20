<?php
class modelPages extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _listWebMenuType(){
		$sql = "SELECT `id`,`name`,`table_data`,`url_img`,`url_img_thumb` FROM `web_menu_type` WHERE `status`=1";
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
	
	public function _listMenu($lang, $parent, $position=NULL){
		if($position!=NULL) $position="AND `position_id` LIKE '%,{$position},%'";
		$sql = "SELECT `id`, `name`, `url`, `img`, `title` FROM `web_menu` WHERE `status`=1 AND `lang`='{$lang}' AND `parent`='{$parent}' {$position} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
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
	
	public function _menuRoot($parent, $arr=NULL){
		if($arr==NULL) $arr=array();
		$row = $this->_menuIdOrAlias($parent);
		$arr[] = array('id'=>$row['id'], 'name'=>$row['name'], 'url'=>$row['url']);
		if($row['parent']==0) return array_reverse($arr);
		return $this->_menuRoot($row['parent'], $arr);
	}
	
	public function _menuTypeId($typeID){
		$sql = "SELECT * FROM `web_menu` WHERE `status`=1 AND `type_id`='{$typeID}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	
	public function _listSliderBanner($lang, $position, $menu_id=NULL){
		if($lang!='') $lang="AND `lang`='{$lang}'";
		if($menu_id!=NULL) $menu_id = "AND `menu_id` LIKE '%,{$menu_id},%'"; else $menu_id = '';
		$sql = "SELECT `name`, `img`, `url`, `info` FROM `web_slider_banner` WHERE `status`=1 AND `position_id`='{$position}' {$lang} {$menu_id} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listDataTable($table, $idMenu, &$totalRows, $perPage=10, $startRow=0, $select=NULL, $where=NULL, $orderBy=NULL){
		$select = '`id`, `name`, `name_alias`, `url`, `img`, `description`, `datetime`,'.$select;
		$select = trim($select,',');
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
	
	public function _listDataTableCustom($table, $idMenu, &$totalRows, $perPage=10, $startRow=0, $select=NULL, $where=NULL, $orderBy=NULL){
		$select = '`id`, `name`, `img`,'.$select;
		$select = trim($select,',');
		$orderBy= $orderBy.',`id` DESC';
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
	
	public function _listParentMenu($id){
		$sql = "SELECT `id`, `name`, `url`, `img`, `title` FROM `web_menu` WHERE `status`=1 AND `parent`='{$id}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listDetailMenu($id, $limit=5, $select=NULL){
		$sql = "SELECT `id`, `name`, `url`, `img`, `description`, `datetime` {$select} FROM `web_article` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listProductMenu($id, $limit=4){
		$sql = "SELECT `id`, `name`, `url`, `img` FROM `web_product` WHERE `status`=1 AND `other`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listTagsKeyword($lang){
		$sql = "SELECT * FROM `web_tags` WHERE `status`=1 AND `lang`='{$lang}' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	/*other*/
	public function _listSale($id){
		$sql = "SELECT * FROM `web_sale` WHERE `status`=1 AND `menu_id` LIKE '%,{$id},%' ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end other*/
	
}//class