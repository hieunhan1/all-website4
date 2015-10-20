<?php
$cF = new controlAdminForm;

$id = $adA->createEditData($table, $arrAction, $rowDetail);

echo '<div id="tableName" style="display:none">'.$table.'</div>
<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:10px">';	

	/*$name = 'status';
	$values = array();
	$values[] = array('name'=>'Hiện', 'id'=>'1');
	$values[] = array('name'=>'Ẩn', 'id'=>'0');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);*/
	
	$name = 'position_id';
    $data = $cF->inputHidden($name, ',4,');
	echo $data;
	
	$name = 'type_id';
    $data = $cF->inputHidden($name, '2');
	echo $data;
	
	$name = 'tab_id';
	$values = $adA->_model->_listMenuTab();
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkboxItemTab', 1);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data .= $cF->inputHidden($name, $value, 'input_medium valueChecksBoxTab');
	echo $cF->displayTable('Tab product', $data);
	
	if($id==0 && $_REQUEST['parent']==0){
		$name = 'parent';
		$data = $cF->inputHidden($name, '0');
		echo $data;
	}else{
		$name = 'parent';
		$where = "`id`<>'{$id}'";
		$values = $adA->selectFromMenu($lang, $where);
		array_unshift($values, array('name'=>'-- chọn danh mục gốc --', 'id'=>'0'));
		if(isset($_REQUEST['parent'])) $valueCheck=$_REQUEST['parent'];
		else $valueCheck=$rowDetail[$name];
		$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
		echo $cF->displayTable('Danh mục gốc', $data);
	}
	
	$name = 'name';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Tên hiển thị', $data);
	
	$name = 'title';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Tiêu đề', $data);
	
	$name = 'name_alias';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	if($arrAction['change']=='') $change=''; else $change='changeAlias';
	$others = $adA->messageChange(CONS_ADMIN_CHANGE_ALIAS, $change);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Alias', $data);
	
	$name = 'url';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	if($arrAction['change']=='') $change=''; else $change='changeUrl';
	$others = $adA->messageChange(CONS_ADMIN_AUTO_URL);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium url_auto', $properties, $others);
	echo $cF->displayTable('Link', $data);
	
	$name = 'description';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->textArea($name, $value, 'textarea');
	echo $cF->displayTable('Description', $data);
	
	$name = 'tags';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $adA->messageChange(CONS_ADMIN_AUTO_TAGS);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Tags (keyword)', $data);
	
	$name = 'order';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'3');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Thứ tự', $data);
	
	$name = 'lang';
    $data = $cF->inputHidden($name, $lang);
	echo $data;
	
	$name = 'id';
    $data = $cF->inputHidden($name, $rowDetail[$name]);
	echo $data;
	
	$name = 'btnCancel';
	$btnCancel = $cF->inputButton($name, 'Cancel', 'submit');
	
	$name = 'btnSubmit';
    $btnSubmit = $cF->inputSubmit($name, $arrAction['lable'], 'submit');
	echo $cF->displayTable('', $btnSubmit.$btnCancel);

echo '</table></form>';