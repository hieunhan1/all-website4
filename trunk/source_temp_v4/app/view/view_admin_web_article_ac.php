<?php
/*action create, edit*/
$this->create_edit_data($table, $lable_submit, $row_detail, $disabled);

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
	
	//ngay_dang
	$values = $row_detail['ngay_dang'];
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày đăng','ngay_dang','input_large datetimepick'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//menu_id
	$values = $row_detail['menu_id'];
	$views = array('menu_id', 'value_checks_box'); //name class
    $this->getProperties('2',$values,'',$views);
	$hidden_item = $this->DisplayProperties();
	
	$where = ' AND (type_id=1 OR type_id=2) ';
	$arr = $this->_model->_web_menu(0, '', NULL, $where);
	$properties = $row_detail['menu_id']; //default check
	$views = array('','','checkbox checkbox_item','width:345px; height:200px;'); //label name class width
    $this->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Danh mục</td> <td>'.$this->DisplayProperties().$hidden_item.'</td></tr>';
	
	//name
	$values = $row_detail['name'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Mô tả','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name_alias
	$values = $row_detail['name_alias'];
	$properties = array('200',$disabled); //maxlength OTHER (disabled, readonly)
	$views = array('Alias','name_alias','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">Nhấp doubleclick để lấy tên không dấu</span>');
	echo $this->DisplayProperties();
	
	//url_hinh
	$values = 'url_hinh'; //field name
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$this->getProperties('6',$values,'',$views);
	$other = $this->DisplayProperties();
	$other .= '<p class="notes">Upload hình ảnh vào thư mục "<strong>articles</strong>"</p>';
	if($row_detail['url_hinh'] != '') $other .= '<div class="avarta"><img src="'.CONS_IMAGES_ARTICLES_THUMBS.$row_detail['url_hinh'].'" /></div>';
	
	$values = $row_detail['url_hinh'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','url_hinh','input_medium'); //label id&name class
    $this->getProperties('1',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//metaDescription
	$values = $row_detail['metaDescription'];
	$properties = ''; //disabled, readonly
	$views = array('Tóm tắt','metaDescription','textarea'); //label id&name class colspan
	//$other = ckeditor_custom('metaDescription');
    $this->getProperties('3',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//metaKeyword
	$values = $row_detail['metaKeyword'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Keyword','metaKeyword','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">Nhấp doubleclick để lấy keyword tự động</span>');
	echo $this->DisplayProperties();
	
	//content
	$values = $row_detail['content'];
	$properties = ''; //disabled, readonly
	$views = array('Nội dung','content','textarea','colspan=2'); //label id&name class colspan
	$other = $this->ckeditor_full('content');
    $this->getProperties('3',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//other
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['other']=='') $properties = 0; else $properties = $row_detail['other']; //default check
	$views = array('Hiện trang chủ','other','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//other2
	/*$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['other2']=='') $properties = 0; else $properties = $row_detail['other2']; //default check
	$views = array('Hiện nút đăng ký','other2','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();*/
	
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