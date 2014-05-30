<?php
$id = $_GET['id'];
if($id==0){
	$lable_submit = 'Thêm mới';
	$type = 1; /*create*/
}else{
	$lable_submit = 'Cập nhật';
	$type = 2; /*update*/
	
	$row_detail = $this->_model->_view_edit_detail($table,$id);
}

if(!empty($_POST)){
	$fields = array_keys($_POST);
	$values = array_values($_POST);
	
	$result = $this->_model->_get_sql($type,$table,$fields,$values,$user_admin,$id);

	if($result==TRUE){
		echo "<p class='message'>Cập nhật thành công</p>";
		header("location: ".$_SESSION['link_back']);
	}else echo "<p class='error'>{$lable_submit} không được. Vui lòng kiểm tra lại</p>";
	
}else $_SESSION['link_back'] = $_SERVER['HTTP_REFERER'];

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Đã xem');
	$arr[] = array('id'=>'0', 'name'=>'Chưa xem');
	if($row_detail['status']=='') $properties = 0; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//diachi
	$values = $row_detail['diachi'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','diachi','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//message
	$values = $row_detail['message'];
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','message','textarea'); //label id&name class colspan
	$other = $this->ckeditor_custom('message');
    $this->getProperties('3',$values,$properties,$views,$other);
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
	$views = array($lable_submit,'btn_action','submit btn_action'); //label id&name class style
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';