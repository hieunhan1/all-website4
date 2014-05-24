<?php session_start();
//session_destroy();
require_once "config.php";
error_reporting(E_ALL ^ E_NOTICE);

function tach_url($url, &$control, &$action, &$data){
	$arr = explode("/", $url);
	if($arr[0]==''){
		$control= CONS_DEFAULT_WEB_CONTROLLER;
		$action	= CONS_DEFAULT_WEB_ACTION;
		$data	= '';
	}else{
		if($arr[0] != CONS_DEFAULT_ADMIN_CONTROLLER){
			$control = $arr[0];
			if(preg_match('/.html/',$arr[1])){
				$action = CONS_WEB_VIEW_CONTENT;
				$data	= $arr[1];
			}else{
				$action = CONS_WEB_PHAN_TRANG;
				if($arr[1]=='') $data = 1; else $data = $arr[1];
			}
		}else{
			$control= $arr[0];
			$action	= $arr[1];
			$data	= $arr[2];
		}
	}
}/*end tach_url*/

$url = $_SERVER['REQUEST_URI'];
$url = str_replace(CONS_BASE_DIR,'',$url);
tach_url($url,$control,$action,$data);

if($control != CONS_DEFAULT_ADMIN_CONTROLLER){
	$c = new control_web($control,$action,$data);
	$c->index();
}else{
	$c = new control_admin($control,$action,$data);
	$c->index();
}

function __autoload($class_name) {
	if(preg_match('/control_/',$class_name))
		$dir_app = 'controller/';
	else
		$dir_app = 'model/';
		
	$filename = $dir_app.$class_name.'.php';	
	if (file_exists($filename)) require_once($filename); 
}//end autoload