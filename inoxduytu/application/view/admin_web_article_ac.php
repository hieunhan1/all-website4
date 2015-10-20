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
	$properties[] = array('propertie'=>'maxlength', 'value'=>'100');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]==0) $value=date('Y-m-d H:i', time());
		else $value=date('Y-m-d H:i', $rowDetail[$name]);
	}else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_large datetimepick', $properties);
	echo $cF->displayTable('Ngày', $data);
	
	$name = 'menu_id';
	$where = "(type_id=1 OR type_id=2)";
	$values = $c->selectFromMenu($lang, $table, $where);
	if(!isset($_POST[$name])){
		$valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputCheckbox($name, $values, $valueCheck, 'checkboxItem', 1);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data .= $cF->inputHidden($name, $value, 'input_medium valueChecksBox');
	echo $cF->displayTable('Danh mục', '<div class="listCheckboxMedium" style="height:350px">'.$data.'</div>');
	
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
	$others = $c->messageChange(CONS_ADMIN_AUTO_URL, $change);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium auto_link_detail', $properties, $others);
	echo $cF->displayTable('Link', $data.'<br /><span class="error messageUrl"></span>');
	
	$name = 'img';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'150');
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	if($rowDetail[$name]!=''){
		$row = $c->_model->_urlImageMenuType($table);
		$img = '<br /><span class="avarta"><img src="'.CONS_BASE_URL.'/'.$row['url_img_thumb'].$rowDetail[$name].'" /></span>';
	}else $img='';
	$data = $cF->inputText($name, $value, 'input_medium', $properties);
	$name = 'btnBrowse';
	$properties = array();
	$properties[] = array('propertie'=>'onclick', 'value'=>"BrowseServer('Images:/', 'img')");
	$message='<br />Upload hình ảnh vào thư mục "<strong>articles</strong>"';
	$others = $c->messageChange($message.$img);
	$data .= $cF->inputButton($name, 'Chọn file ảnh', 'button', $properties, $others);
	echo $cF->displayTable('Ảnh đại diện', $data);
	
	$name = 'description';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->textArea($name, $value, 'textarea');
	echo $cF->displayTable('Description', $data);
	
	$name = 'tags';
	$properties = array();
	$properties[] = array('propertie'=>'maxlength', 'value'=>'200');
	$others = $c->messageChange(CONS_ADMIN_AUTO_TAGS);
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
    $data = $cF->inputText($name, $value, 'input_medium', $properties, $others);
	echo $cF->displayTable('Tags (keyword)', $data);
	
	$name = 'content';
	if(!isset($_POST[$name])) $value=$rowDetail[$name]; else $value=$_POST[$name];
	$others = $cF->ckeditorFull($name);
    $data = $cF->textArea($name, $value, 'textarea', NULL, $others);
	echo $cF->displayTableColspan($data);
	
	/*$name = 'other';
	$values = array();
	$values[] = array('name'=>'Hiện', 'id'=>'1');
	$values[] = array('name'=>'Ẩn', 'id'=>'0');
	if(!isset($_POST[$name])){
		if($rowDetail[$name]=='') $valueCheck=1;
		else $valueCheck=$rowDetail[$name];
	}else $valueCheck=$_POST[$name];
	$data = $cF->inputRadio($name, $values, $valueCheck, 'radio');
	echo $cF->displayTable('Nổi bật left', $data);*/
	
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