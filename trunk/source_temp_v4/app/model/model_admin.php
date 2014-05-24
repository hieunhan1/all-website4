<?php
include_once('class/db.php');
class model_admin extends db{
	public function xuly_dangnhap($u,$p){
		$u = strip_tags($u);
		$p = md5($p);
		$str = "SELECT id,name,username,quyen_xem,quyen_action FROM web_users WHERE username='{$u}' AND password='{$p}' AND status=1 AND `delete`=0";
		if(!$result = $this->db->query($str)) die($this->db->error);
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
	
	
	public function menu_admin(){
		$sql = "SELECT `id`,`name`,`url`,`url_hinh` FROM `web_menu_admin` WHERE `status`=1 ORDER BY `order`";
		if( ($kq=$this->db->query($sql))==FALSE ) die($this->db->error);
		
		$data = array();
		foreach ($kq as $row) $data[] = $row;
		
		print_r($kq);
		return $data;
	}//bainoibat

	function pageslist($baseurl, $totalrows, $offset,$per_page, $currentpage){
		$totalpages = ceil($totalrows/$per_page);
		$from = $currentpage-$offset;
		$to = $currentpage +$offset;
		if ($from<=0) $from=1;
		if ($to>$totalpages) $to=$totalpages;
		$links="";
		for ($j=$from; $j<=$to; $j++) {
			if ($j==$currentpage) $links = $links . "<span>$j</span>"; 
			else $links = $links . "<a href = '$baseurl/$j/'>$j</a>"; 	
		}
		return $links;
	}//function*/

}//class