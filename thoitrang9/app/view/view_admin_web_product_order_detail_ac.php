<?php
/*action create, edit*/
$this->create_edit_data($table, $lable_submit, $row_detail, $disabled, $change_alias);

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
	
	//order_id
	$values = $row_detail['order_id'];
	$properties = array('10',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('ID order','order_id','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//product_id
	$values = $row_detail['product_id'];
	$properties = array('10',$disabled); //maxlength OTHER (disabled, readonly) 
	$views = array('ID product','product_id','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tên sản phẩm','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//soluong
	$values = $row_detail['soluong'];
	$properties = array('5'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số lượng','soluong','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//dongia
	$values = $row_detail['dongia'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Đơn giá','dongia','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//giamgia
	$values = $row_detail['giamgia'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Giảm giá','giamgia','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//thanhtien
	$values = $row_detail['tien'];
	$properties = array('8'); //maxlength OTHER (disabled, readonly) 
	$views = array('Thành tiền','tien','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = array('id'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//lang
	$values = $lang;
	$views = array('lang'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//btn_cancel
	$other = '<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\''.$_SESSION['link_back'].'\'" />';
	
	//btn_submit
	$properties = ''; //disabled, readonly
	$views = array($lable_submit,'btn_action','submit btn_action'); //label id&name class style
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';