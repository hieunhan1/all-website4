<?php
include_once('model_db.php');
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
	
	public function _link_detail($menu_id){
		$str = explode(',',$menu_id);
		$i = count($str)-2;
		$sql = "SELECT `url` FROM `web_menu` WHERE `id`='".$str[$i]."'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		return $row['url'];
	}
	
	public function _web_slider_banner($position, $lang, $menu_id=NULL){
		if($menu_id!=NULL) $menu_id = "AND `menu_id` LIKE '%,{$menu_id},%'"; else $menu_id = '';
		$sql = "SELECT `name`,`url_hinh`,`url` FROM `web_slider_banner` WHERE `delete`=0 AND `status`=1 AND `position_id`='{$position}' AND lang='{$lang}' {$menu_id} ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	
	public function _pageslist($baseurl, $totalrows, $offset, $per_page, $currentpage){
		$totalpages = ceil($totalrows/$per_page);
		if($totalpages>1){
			$from = $currentpage-$offset;
			$to = $currentpage +$offset;
			if($from<=0) $from=1; 
			if($to>$totalpages) $to=$totalpages;
			$links = '';
			for($j=$from; $j<=$to; $j++){
				if($j==$currentpage) $links = $links."<span>{$j}</span>"; 
				else $links = $links."<a href='{$baseurl}{$j}/'>{$j}</a>"; 	
			}
			return $links;
		}
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
	
	/*list*/
	public function _list_web_product($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`name_alias`,`url_hinh`,`giaban`,`giagoc`,`menu_id` FROM `web_product` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `ngay_dang` DESC LIMIT $startrow, $per_page";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_product` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	public function _list_web_article($id, $per_page=10, $startrow=0, &$totalrows){
		$sql = "SELECT `id`,`name`,`name_alias`,`url_hinh`,`metaDescription`,`menu_id`,`ngay_dang` FROM `web_article` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%' ORDER BY `ngay_dang` DESC LIMIT $startrow, $per_page";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		
		$sql = "SELECT count(*) FROM `web_article` WHERE `delete`=0 AND `status`=1 AND menu_id LIKE '%,{$id},%'";
		$result = $this->db->query($sql);
		$row = $result->fetch_row();
		$totalrows=$row[0];
		
		return $data;
	}
	/*end list*/
	
	/*detail*/
	public function _detail_article($alias){
		$sql = "SELECT * FROM `web_article` WHERE `delete`=0 AND status=1 AND name_alias='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	public function _detail_product($alias){
		$sql = "SELECT * FROM `web_product` WHERE `delete`=0 AND status=1 AND name_alias='{$alias}' LIMIT 1";
		if(!$result = $this->db->query($sql)) return FALSE;
		if($result->num_rows != 1) return FALSE;
		return $result->fetch_assoc();
	}
	/*end detail*/
	
	/*other post*/
	public function _other_post_article($id,$idMenu,$limit=5){
		$sql = "SELECT `name`,`name_alias`,`url_hinh`,`menu_id` FROM `web_article` WHERE `delete`=0 AND `status`=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY `ngay_dang` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	public function _other_post_product($id,$idMenu,$limit=5){
		$sql = "SELECT `id`,`name`,`name_alias`,`url_hinh`,`giaban`,`giagoc`,`menu_id` FROM `web_product` WHERE `delete`=0 AND `status`=1 AND id<>'{$id}' AND menu_id LIKE '%,{$idMenu},%' ORDER BY `ngay_dang` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		foreach ($result as $row) $data[] = $row;
		return $data;
	}
	/*end other post*/
	
}//class