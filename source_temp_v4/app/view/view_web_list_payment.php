<?php
$link_step1 = 'gio-hang/?step=step1';
$link_step2 = 'gio-hang/?step=step2';
$link_step3 = 'gio-hang/?step=step3';
$all_sp = count($_SESSION['list_order_sp_name']);

if(!isset($_GET['step'])) include_once('view_web_list_payment_cart.php');
elseif($_GET['step']=='step1' && $all_sp>0){
	$_SESSION['order_sp_phigiao'] = 0;
	include_once('view_web_list_payment_step1.php');
}elseif($_GET['step']=='step2' && $all_sp>0){
	if(!isset($_GET['email'])) header('location: '.$link_step1);
	include_once('view_web_list_payment_step2.php');
}elseif($_GET['step']=='step3' && $all_sp>0){
	include_once('view_web_list_payment_step3.php');
	$this->order_sp_cancel();
}elseif($_GET['step']=='clear'){
	$this->order_sp_cancel();
	header('location: /');
	return true;
}else header('location: /');

?>
