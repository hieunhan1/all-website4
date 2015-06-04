<?php
$cF = new controlAdminForm;

$c->createEditData($table, $arrAction, $rowDetail);

echo '<div id="tableName" style="display:none">'.$table.'</div>
<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	

	$name = 'status';
	$values = array();
	$values[] = array('name'=>'Hiện', 'id'=>'1');
	$values[] = array('name'=>'Ẩn', 'id'=>'0');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Trạng thái', $data);
	
	$name = 'datetime';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
		else $value=date('Y-m-d H:i', $rowDetail[$name]);
	}else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày đăng', $data);
	
	$name = 'tuyendung_cty_id';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'4');
	$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập ID');
	$properties[] = array('propertie'=>'style', 'value'=>'width:50px');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large value_id', $properties);
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$properties[] = array('propertie'=>'placeholder', 'value'=>'Nhập tên công ty');
	$properties[] = array('propertie'=>'style', 'value'=>'width:280px; margin-left:10px');
    $data .= $cF->inputText('', '', 'input_medium value_name', $properties);
	$data .= '<input type="button" value="Tìm kiếm" class="value_search" style="color:#666; margin-left:5px; padding:2px 5px" />';
	$data .= '<div id="value_view" table="web_tuyendung_cty"></div>';
	echo $cF->displayTable('<span style="color:#F00">**Cty tuyển dụng</span>', $data);
	
	$name = 'datetime_hannop';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
		else $value=date('Y-m-d H:i', $rowDetail[$name]);
	}else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Hạn nộp hồ sơ', $data);
	
	$name = 'menu_id';
	$where = "(type_id=1 OR type_id=7)";
	$values = $c->selectFromMenu($lang, $table, $where);
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkboxItem', 1);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data .= $cF->inputHidden($name, $value, 'input_medium valueChecksBox');
	echo $cF->displayTable('Danh mục', '<div class="listCheckboxMedium">'.$data.'</div>');
	
	$name = 'name';
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
	$others = $c->messageChange(CONS_ADMIN_CHANGE_ALIAS, $change);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Alias', $data);
	
	$name = 'url';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	if($arrAction['disabled']!='') $properties[] = $arrAction['disabled'];
	if($arrAction['change']=='') $change=''; else $change='changeUrl';
	$others = $c->messageChange(CONS_ADMIN_CHANGE_ALIAS, $change);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium auto_link_detail', $properties, $others);
	echo $cF->displayTable('Link', $data.'<br /><span class="error messageUrl"></span>');
	
	$name = 'noilamviec';
	$values = array();
	$values[] = array('id'=>'', 'name'=>'-- chọn nơi làm việc --');
	$values[] = array('id'=>'1', 'name'=>'Tp.HCM');
	$values[] = array('id'=>'2', 'name'=>'Hà Nội');
	$values[] = array('id'=>'3', 'name'=>'Huế');
	$values[] = array('id'=>'4', 'name'=>'Đà Nẵng');
	$values[] = array('id'=>'5', 'name'=>'Cần Thơ');
	$values[] = array('id'=>'6', 'name'=>'Đồng Nai');
	$values[] = array('id'=>'7', 'name'=>'Bình Dương');
	$values[] = array('id'=>'8', 'name'=>'Nước ngoài');
	$values[] = array('id'=>'9', 'name'=>'Khác');
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->select($name, $values, $valueCheck, 'input_medium', 1);
	echo $cF->displayTable('Nơi làm việc', $data);
	
	$name = 'mucluong';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'20');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Mức lương', $data);
	
	$name = 'soluongtuyen';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'30');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties);
	echo $cF->displayTable('Số lượng tuyển', $data);
	
	$name = 'description';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->textArea($name, $value, 'textarea');
	echo $cF->displayTable('Description', $data);
	
	$name = 'tags';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	$others = $c->messageChange(CONS_ADMIN_CHANGE_ALIAS);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Tags (keyword)', $data);
	
	$name = 'quyenloi';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	$others = $cF->ckeditorCustom($name);
    $data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTable('Quyền lợi', $data);
	
	$name = 'yeucau';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	$others = $cF->ckeditorCustom($name);
    $data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTable('Yêu cầu', $data);
	
	$name = 'content';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	$others = $cF->ckeditorFull($name);
    $data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTableColspan($data);
	
	$name = 'other';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->textArea($name, $value, 'textarea');
	echo $cF->displayTable('Khác', $data);
	
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