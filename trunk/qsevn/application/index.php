<?php
session_start();
ob_start();
//session_destroy();
//error_reporting(E_ALL ^ E_NOTICE);
date_default_timezone_set('Asia/Ho_Chi_Minh');

include_once('config/config.php');

function tachUrl($url, &$arrUrl){
	$arrUrl = explode('/', $url);
	if(count($arrUrl)==1)
		$str = CONS_WEB_HOME_PAGE;
	else{
		$regex='/(.*)*.html$/';
		if(!preg_match($regex, $url))
			$str = CONS_WEB_MENU_PAGE;
		else
			$str = CONS_WEB_DETAIL_PAGE;
	}
	return $str;
}

$url = $_SERVER['REQUEST_URI'];
//$url = preg_replace('/\//', '', $url, 1);
$url = str_replace(CONS_BASE_DIR, '', $url); /*Upload host tat dong nay*/
$control = tachUrl($url, $arrUrl);

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