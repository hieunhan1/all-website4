<?php
function checksControl($arrUrl){
	$control = $arrUrl[0];
	if($arrUrl[1]==0) $data=1; else $data=$arrUrl[1];
	
	if($control!=CONS_DEFAULT_ADMIN_CONTROLLER && $control!=CONS_AJAX_NAME){
		if($arrUrl[1]<=0) $currentPage=1; else $currentPage=$arrUrl[1];
		settype($currentPage, 'int');
		include_once('controlMenu.php');
	}elseif($control==CONS_DEFAULT_ADMIN_CONTROLLER){
		$table = $arrUrl[1];
		include_once('controlAdmin.php');
	}else{
		include_once('controlAjax.php');
	}
	return true;
}
checksControl($arrUrl);