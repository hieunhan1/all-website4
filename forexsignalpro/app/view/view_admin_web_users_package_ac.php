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
	
	$where = " AND (type_id=7 OR type_id=14) AND lang='{$lang}' ";
	$arr = $this->_model->_web_menu(0, '', NULL, $where);
	$properties = $row_detail['menu_id']; //default check
	$views = array('','','checkbox checkbox_item','width:600px; height:300px;'); //label name class width
    $this->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Tính năng</td> <td>'.$this->DisplayProperties().$hidden_item.'</td></tr>';
	
	//parent
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'-- Chọn gói --');
	if(isset($_GET['id'])) $where = " AND id<>'{$_GET['id']}' AND lang='{$lang}' "; else $where='';
	$arr = $this->_model->_web_users_package(0, '', $arr, $where);
	$properties = $row_detail['parent']; //default check
	$views = array('Gói','parent','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tên gói','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//price
	$values = $row_detail['price'];
	$properties = array('10'); //maxlength OTHER (disabled, readonly) 
	$views = array('Giá','price','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//discount
	$values = $row_detail['discount'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Giảm giá','discount','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//songay
	$values = $row_detail['songay'];
	$properties = array('3'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số ngày','songay','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//payment_paypal
	$values = $row_detail['payment_paypal'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Payment Paypal','payment_paypal','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//order
	$values = $row_detail['order'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Thứ tự','order','input_medium'); //label id&name class style
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