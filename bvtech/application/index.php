<?php
session_start();
ob_start();
//session_destroy();
//error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('Asia/Ho_Chi_Minh');

include_once('config/config.php');

function tachUrl($url){
	$arr = array();
	$arrUrl = explode('/', $url);
	if(count($arrUrl)==1){
		$str = CONS_PAGE_HOME;
		$arr['control'] = CONS_PAGE_HOME;
	}else{
		$regex='/(.*)*.html$/';
		if($arrUrl[0]!=CONS_PAGE_AJAX && $arrUrl[0]!=CONS_PAGE_ADMIN){
			$arr['alias'] = $arrUrl[0];
			if(!preg_match($regex, $url)){
				$arr['control'] = CONS_WEB_PAGE;
				if($arrUrl[1]=='') $arr['currentPage']=1; else $arr['currentPage']=$arrUrl[1];
			}else{
				$arr['control'] = CONS_WEB_DETAIL;
				$arr['detail'] = str_replace('.html', '', $arrUrl[1]);
			}
		}else if($arrUrl[0]==CONS_PAGE_AJAX) $arr['control'] = CONS_PAGE_AJAX;
		else if($arrUrl[0]==CONS_PAGE_ADMIN){
			$arr['control'] = 'administrator';
			if($arrUrl[1]=='') $arr['currentPage']='home'; else $arr['currentPage']=$arrUrl[1];
		}
	}
	return $arr;
}

$url = $_SERVER['REQUEST_URI'];
//$url = preg_replace('/\//', '', $url, 1);
$url = str_replace(CONS_BASE_DIR, '', $url); /*Upload host tat dong nay*/
$arrUrl = tachUrl($url);
$control = $arrUrl['control'];

$fileController = "controllers/{$control}.php";
if(file_exists($fileController)){
	include_once($fileController);
}else{
	echo ERROR_NOT_FOUND_CONTROLLER;
}

function __autoload($className) {
	$fileControl = "controllers/{$className}.php";
	$fileModel = "models/{$className}.php";
	if(file_exists($fileControl)) include_once($fileControl); 
	if(file_exists($fileModel)) include_once($fileModel); 
}