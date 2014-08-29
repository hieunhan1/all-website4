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
	$properties = array('100'); 
	$views = array('Mô tả','name','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//booking_form_id
	$arr = $this->_model->_web_booking_form();
	$properties = $row_detail['booking_form_id'];
	$views = array('Đi từ','booking_form_id','input_medium');
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//booking_to_id
	$arr = $this->_model->_web_booking_to();
	$properties = $row_detail['booking_to_id'];
	$views = array('Đi đến','booking_to_id','input_medium');
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//weight
	$values = $row_detail['weight'];
	$properties = array('50'); 
	$views = array('Weight','weight','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//rate
	$values = $row_detail['rate'];
	$properties = array('50'); 
	$views = array('Rate','rate','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//myc
	$values = $row_detail['myc'];
	$properties = array('50'); 
	$views = array('MYC','myc','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//msc
	$values = $row_detail['msc'];
	$properties = array('50'); 
	$views = array('MSC','msc','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//mcc
	$values = $row_detail['mcc'];
	$properties = array('50'); 
	$views = array('MCC','mcc','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//tcs
	$values = $row_detail['tcs'];
	$properties = array('50'); 
	$views = array('TCS','tcs','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//awb
	$values = $row_detail['awb'];
	$properties = array('50'); 
	$views = array('AWB','awb','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//service
	$values = $row_detail['service'];
	$properties = array('50'); 
	$views = array('Service','service','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//other
	$values = $row_detail['other'];
	$properties = array('60'); 
	$views = array('Other','other','input_medium'); 
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
	$views = array($arr_action['lable_submit'],'btn_action','submit btn_action'); 
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';