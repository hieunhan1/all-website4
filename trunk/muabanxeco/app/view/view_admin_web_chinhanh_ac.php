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
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tên chi nhánh','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('60'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Phone','phone','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//fax
	$values = $row_detail['fax'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Fax','fax','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//address
	$values = $row_detail['address'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Address','address','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//hotline
	$values = $row_detail['hotline'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Hotline','hotline','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//yahoo_nick
	$values = $row_detail['yahoo_nick'];
	$properties = array('120'); //maxlength OTHER (disabled, readonly) 
	$views = array('Yahoo nick','yahoo_nick','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//yahoo_name
	$values = $row_detail['yahoo_name'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Yahoo name','yahoo_name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//google_map
	$values = $row_detail['google_map'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Google map','google_map','input_medium'); //label id&name class style
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