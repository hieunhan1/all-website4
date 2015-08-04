<?php
$cF = new controlAdminForm;

$c->createEditData($table, $arrAction, $rowDetail);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	

	$name = 'status';
	$values = array();
	$values[] = array('name'=>'error', 'id'=>'3');
	$values[] = array('name'=>'check', 'id'=>'2');
	$values[] = array('name'=>'cancel', 'id'=>'0');
	$values[] = array('name'=>'success', 'id'=>'1');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
		else $value=date('Y-m-d H:i', $rowDetail[$name]);
	}else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Datetime', $data);
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Name', $data);
	
	$name = 'email';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Email', $data);
	
	$name = 'package_id';
	$values = $c->_model->_listTable('web_users_package');
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
	echo $cF->displayTable('Package ID', $data);
	
	$name = 'ip_address';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('IP address', $data);
	
	$name = 'PAYEE_ACCOUNT';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('PAYEE ACCOUNT', $data);
	
	$name = 'PAYMENT_AMOUNT';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('PAYMENT AMOUNT', $data);
	
	$name = 'PAYMENT_UNITS';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'5');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('PAYMENT UNITS', $data);
	
	$name = 'PAYMENT_ID';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('PAYMENT ID', $data);
	
	$name = 'TIMESTAMPGMT';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('TIMESTAMPGMT', $data);
	
	$name = 'PAYER_ACCOUNT';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'10');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('PAYER ACCOUNT', $data);
	
	$name = 'token';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	//$others = $cF->ckeditorCustom($name);
    //$data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTable('Token', '<p style="line-height:22px">'.$value.'</p>');
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	$name = 'id';
    $data = $cF->inputHidden($name, $rowDetail[$name]);
	echo $data;
	
	$name = 'btnCancel';
    $btnCancel = $cF->btnCancel($name);
	$name = 'btnSubmit';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submit');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table></form>';