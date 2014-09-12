<?php session_start();
//session_destroy();
require_once "config.php";
error_reporting(E_ALL ^ E_NOTICE);

date_default_timezone_set('Asia/Ho_Chi_Minh');

function tach_url($url, &$control, &$action, &$data, &$lang){
	$arr = explode("/", $url);
	//echo count($arr);
	if( ($arr[1]=='' || $arr[1]=='en') && count($arr)<=3 ){
		if($arr[1]=='') $lang='vi'; elseif($arr[1]=='en') $lang='en';
		$control= CONS_DEFAULT_WEB_CONTROLLER;
		$action	= CONS_DEFAULT_WEB_ACTION;
		$data	= '';
		return true;
	}
	
	if($arr[1]!=CONS_DEFAULT_ADMIN_CONTROLLER && $arr[1]!=CONS_DEFAULT_FORUM_CONTROLLER){
		$lang = $arr[1];
		$control = $arr[2];
		if(preg_match('/.html/',$arr[3])){
			$action = CONS_WEB_VIEW_DETAIL;
			$data	= $arr[3];
			$data	= str_replace('.html','',$data);
		}else{
			$action = CONS_WEB_VIEW_MENU;
			if($arr[3]=='') $data = 1; else $data = $arr[3];
		}
	}else{
		$control= $arr[1];
		$action	= $arr[2];
		$data	= $arr[3];
	}
}/*end tach_url*/

$url = $_SERVER['REQUEST_URI'];
$url = str_replace(CONS_BASE_DIR,'',$url); /*upload host tắt str_replace này*/
tach_url($url, $control, $action, $data, $lang);

if($control != CONS_DEFAULT_ADMIN_CONTROLLER){
	$c = new control_web($control, $action, $data, $lang);
	$c->index();
}else{
	$c = new control_admin($control, $action, $data);
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