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
	
	//today
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Up');
	$arr[] = array('id'=>'0', 'name'=>'Down');
	$arr[] = array('id'=>'2', 'name'=>'NO');
	if($row_detail['today']=='') $properties = 2; else $properties = $row_detail['today']; //default check
	$views = array('Today','today','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//week
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Up');
	$arr[] = array('id'=>'0', 'name'=>'Down');
	$arr[] = array('id'=>'2', 'name'=>'NO');
	if($row_detail['week']=='') $properties = 2; else $properties = $row_detail['week']; //default check
	$views = array('Week','week','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//month
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Up');
	$arr[] = array('id'=>'0', 'name'=>'Down');
	$arr[] = array('id'=>'2', 'name'=>'NO');
	if($row_detail['month']=='') $properties = 2; else $properties = $row_detail['month']; //default check
	$views = array('Month','month','radio',' &nbsp; '); //label name class other
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