<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//menu_id
	$values = $row_detail['menu_id'];
	$views = array('menu_id', 'value_checks_box'); //name class
    $this->getProperties('2',$values,'',$views);
	$hidden_item = $this->DisplayProperties();
	
	$where = " AND (type_id=1 OR type_id=3) AND lang='{$lang}' ";
	$arr = $this->_model->_web_menu(0, '', NULL, $where);
	$properties = $row_detail['menu_id']; //default check
	$views = array('','','checkbox checkbox_item','width:345px; height:100px;'); //label name class width
    $this->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Danh mục</td> <td>'.$this->DisplayProperties().$hidden_item.'</td></tr>';
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//code
	$values = $row_detail['code'];
	$properties = array('10'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mã','code','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//code_bill
	$values = $row_detail['code_bill'];
	$properties = array('10'); //maxlength OTHER (disabled, readonly) 
	$views = array('Đầu số mã bill','code_bill','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//lang
	$values = $lang;
	$views = array('lang'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = array('id'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//btn_cancel
	$other = '<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\''.$_SESSION['link_back'].'\'" />';
	
	//btn_submit
	$properties = ''; //disabled, readonly
	$views = array($arr_action['lable_submit'],'btn_action','submit btn_action'); //label id&name class style
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';