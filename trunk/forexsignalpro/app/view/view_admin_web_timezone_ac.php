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
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//timezone
	$values = $row_detail['timezone'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Timezone','timezone','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//opens
	$values = $row_detail['opens'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Opens','opens','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">nhập giờ UTC theo định dạng 24 tiếng</span>');
	echo $this->DisplayProperties();
	
	//closes
	$values = $row_detail['closes'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Closes','closes','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">nhập giờ UTC theo định dạng 24 tiếng</span>');
	echo $this->DisplayProperties();
	
	//order
	$values = $row_detail['order'];
	$properties = array('3'); //maxlength OTHER (disabled, readonly) 
	$views = array('Thứ tự','order','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//other
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Opens &lt;= Current time &lt; Closes');
	$arr[] = array('id'=>'0', 'name'=>'Opens &lt;= Current time &gt; Closes');
	if($row_detail['other']=='') $properties = 1; else $properties = $row_detail['other']; //default check
	$views = array('Other','other','radio',' &nbsp; '); //label name class other
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