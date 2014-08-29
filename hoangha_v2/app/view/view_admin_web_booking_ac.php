<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

echo '<form name="form_action" method="post" action="">
<table width="75%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status'];
	$views = array('Trạng thái','status','radio',' &nbsp; ');
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//datetime
	if($row_detail['datetime']==0) $values = $this->view_datetime(time());
	else $values = $this->view_datetime($row_detail['datetime']);
	$properties = array('20');  
	$views = array('Ngày booking','datetime','input_large datetimepick'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100');  
	$views = array('Mô tả','name','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('60');  
	$views = array('Email','email','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('20');  
	$views = array('Phone','phone','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//address
	$values = $row_detail['address'];
	$properties = array('200');  
	$views = array('Address','address','input_medium'); 
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
	
	//items
	$values = $row_detail['items'];
	$properties = array('100');  
	$views = array('Mặt hàng','items','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//number
	$values = $row_detail['number'];
	$properties = array('10');  
	$views = array('Số lượng','number','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//temperature
	$values = $row_detail['temperature'];
	$properties = array('100');  
	$views = array('Nhiệt độ','temperature','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//volume_weight
	$values = $row_detail['volume_weight'];
	$properties = array('100');  
	$views = array('Volume weight','volume_weight','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//other
	$values = $row_detail['other'];
	$properties = array('30');  
	$views = array('Other','other','input_medium'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//message
	$values = $row_detail['message'];
	$properties = '';
	$views = array('Yêu cầu','message','textarea');
	$other = $this->ckeditor_custom('message');
    $this->getProperties('3',$values,$properties,$views,$other);
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