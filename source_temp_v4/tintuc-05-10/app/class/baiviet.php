<?php
class baiviet {
	public $bv;
	public $params;
	public $current_action;
	public $cname="baiviet";
	public $lang;
	function __construct($action,$params, $lang){
		$this->bv = new model_baiviet;
		$this->current_action=$action;
		$this->params = $params;
		$this->lang = $lang;
	}//construct

	function index(){
		$cacloai = $this->bv ->cacloai($this->lang);
		$bainb = $this->bv ->bainoibat($this->lang,4);
		$baixn = $this->bv ->baixemnhieu($this->lang,10);
		//$this->xoacache();
		require_once "view/home.php"; //nạp layout
	}//index
	function detail(){		
		$id= $this->params[0]; settype($id,"int"); if ($id<=0) return;
		$bai = $this->bv->detail($id);
		require_once "view/home.php";
	}//detail
	
	function cat(){		
		$idloai= $this->params[0];
		$currentpage= $this->params[1];
		settype($idloai,"int"); settype($currentpage,"int");
		if ($idloai<=0) return; 
		if ($currentpage<=0) $currentpage=1;
		$per_page=5; $totalrows=0; 
		$start = ($currentpage-1)*$per_page;
		$listbai = $this->bv->baitrongloai($idloai,$per_page, $start,$totalrows);
		require_once "view/home.php";
	}//cat
	
	function xoacache(){
		$dir ="../cache/"; 
		$arr = scandir($dir);
		$dem=0;
		foreach($arr as $filename){
			if ($filename=="." || $filename==".." || $filename==".htaccess") continue;
			unlink($dir.$filename); $dem++;
		}
		echo "Đã xoá $dem file cache";
	}


}//class