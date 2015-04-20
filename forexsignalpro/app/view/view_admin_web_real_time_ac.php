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
	
	//datetime
	if($row_detail['datetime']==0) $values = $this->view_datetime(time());
	else $values = $this->view_datetime($row_detail['datetime']);
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Datetime','datetime','input_large datetimepick'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//currency_id
	$arr = $this->_model->_web_currency();
	$properties = $row_detail['currency_id']; //default check
	$views = array('Currency','currency_id','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//oders
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'BUY');
	$arr[] = array('id'=>'0', 'name'=>'SELL');
	if($row_detail['oders']=='') $properties = 1; else $properties = $row_detail['oders']; //default check
	$views = array('Oders','oders','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//entry_point
	$values = $row_detail['entry_point'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Entry point','entry_point','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//take_profit
	$values = $row_detail['take_profit'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Take profit','take_profit','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//stop_loss
	$values = $row_detail['stop_loss'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Stop Loss','stop_loss','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//status_real_time
	$arr = array();
	$arr[] = array('id'=>'2', 'name'=>'Waiting for Opportunity');
	$arr[] = array('id'=>'3', 'name'=>'In Progressing');
	$arr[] = array('id'=>'1', 'name'=>'Success');
	$arr[] = array('id'=>'0', 'name'=>'Failure');
	if($row_detail['status_real_time']=='') $properties = 3; else $properties = $row_detail['status_real_time']; //default check
	$views = array('Status','status_real_time','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
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