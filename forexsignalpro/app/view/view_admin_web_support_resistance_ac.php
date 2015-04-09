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
	
	//name
	$values = $row_detail['name'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//support_s1
	$values = $row_detail['support_s1'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Support S1','support_s1','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//support_s2
	$values = $row_detail['support_s2'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Support S2','support_s2','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//support_r3
	$values = $row_detail['support_r3'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Support R3','support_r3','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//resistance_r1
	$values = $row_detail['resistance_r1'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Resistance R1','resistance_r1','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//resistance_r2
	$values = $row_detail['resistance_r2'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Resistance R2','resistance_r2','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//resistance_r3
	$values = $row_detail['resistance_r3'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Resistance R3','resistance_r3','input_medium'); //label id&name class style
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