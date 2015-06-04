<?php
$cF = new controlAdminForm;

$c->createEditData($table, $arrAction, $rowDetail);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	
	echo $cF->displayTable('Ngày đăng ký', '<p style="color:#00F; font-weight:bold; margin-top:3px">'.$c->viewDatetime($rowDetail['datetime']).'</p>' );
	
	$name = 'status';
	$values = array();
	$values[] = array('name'=>'Chưa gửi', 'id'=>'0');
	$values[] = array('name'=>'Đã gửi', 'id'=>'2');
	$values[] = array('name'=>'Đã xem', 'id'=>'1');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	/*$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
		else $value=date('Y-m-d H:i', $rowDetail[$name]);
	}else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày', $data);*/
	
	
	$name = 'nhanvien_lienhe';
	$values = $c->_model->_listDanhSachNhanVien();
	array_unshift($values, array('name'=>'-- chọn nhân viên --', 'id'=>''));
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->select($name, $values, $valueCheck, 'input_large', 1);
	$data .= '<input type="button" id="sendmail" table="'.$table.'" value="Sendmail" style="color:#666; margin-left:5px; padding:3px 15px" /><p id="messageSendmail" class="message"></p>';
	echo $cF->displayTable('Gửi đến nhân viên', $data);
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Họ tên', $data);
	
	/*$name = 'ngaysinh';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Ngày sinh', $data);*/
	
	$name = 'email';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'60');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Email', $data);
	
	$name = 'phone';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Điện thoại', $data);
	
	$name = 'address';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Địa chỉ', $data);
	
	/*$name = 'totnghiep';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Tốt nghiệp', $data);*/
	
	$name = 'khoahoc';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Khóa học', $data);
	
	$name = 'noihoc';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Nơi học', $data);
	
	$name = 'message';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->textArea($name, $value, 'textarea');
	echo $cF->displayTable('Lời nhắn', $data);
	
	/*$name = 'other';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'50');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Kênh tìm kiếm', $data);*/
	
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