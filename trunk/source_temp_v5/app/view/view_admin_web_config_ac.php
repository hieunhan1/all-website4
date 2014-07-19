<?php
/*action create, edit*/
$this->create_edit_data($table, $lable_submit, $row_detail, $disabled, $change_alias);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['config_status']=='') $properties = 1; else $properties = $row_detail['config_status']; //default check
	$views = array('Trạng thái','config_status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_name
	$values = $row_detail['config_name'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Site name','config_name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_lang
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'----- select -----');
	$languages = $this->_model->_web_languages();
	foreach($languages as $row){
		$arr[] = array('id'=>$row['language_code'], 'name'=>$row['language_name']);
	}
	$properties = $row_detail['config_lang']; //default check
	$views = array('Ngôn ngữ','config_lang','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_limit_1
	$values = $row_detail['config_limit_1'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số tin tức','config_limit_1','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_limit_2
	$values = $row_detail['config_limit_2'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tuyển dụng','config_limit_2','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_limit_3
	$values = $row_detail['config_limit_3'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số hình ảnh','config_limit_3','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_limit_4
	$values = $row_detail['config_limit_4'];
	$properties = array('2'); //maxlength OTHER (disabled, readonly) 
	$views = array('Số video','config_limit_4','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_tel
	$values = $row_detail['config_tel'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','config_tel','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_email
	$values = $row_detail['config_email'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','config_email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_copyright
	$values = $row_detail['config_copyright'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Copyright','config_copyright','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//config_footer
	$values = $row_detail['config_footer'];
	$properties = ''; //disabled, readonly
	$views = array('Thông tin footer','config_footer','textarea'); //label id&name class colspan
	$other = $this->ckeditor_custom('config_footer');
    $this->getProperties('3',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//id
	$values = $row_detail['config_id'];
	$views = array('config_id'); //name class
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