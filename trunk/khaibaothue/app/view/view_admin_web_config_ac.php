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
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Site name','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//lang
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- select -----');
	$languages = $this->_model->_web_languages();
	foreach($languages as $row){
		$arr[] = array('id'=>$row['ma'], 'name'=>$row['name']);
	}
	$properties = $row_detail['lang']; //default check
	$views = array('Ngôn ngữ','lang','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//max_limit_1
	$values = $row_detail['max_limit_1'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số tin tức','max_limit_1','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	/*//max_limit_2
	$values = $row_detail['max_limit_2'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tuyển dụng','max_limit_2','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//max_limit_3
	$values = $row_detail['max_limit_3'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số hình ảnh','max_limit_3','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//max_limit_4
	$values = $row_detail['max_limit_4'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số video','max_limit_4','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();*/
	
	//tel
	$values = $row_detail['tel'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','tel','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//copyright
	$values = $row_detail['copyright'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Copyright','copyright','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//contact_foo
	$values = $row_detail['contact_foo'];
	$properties = ''; //disabled, readonly
	$views = array('Thông tin footer','contact_foo','textarea'); //label id&name class colspan
	$other = $this->ckeditor_custom('contact_foo');
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