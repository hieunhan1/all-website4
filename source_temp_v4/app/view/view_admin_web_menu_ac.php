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
	
	//position_id
	$values = $row_detail['position_id'];
	$views = array('position_id','value_checks_box'); //name class
    $this->getProperties('2',$values,'',$views);
	$hidden_item = $this->DisplayProperties();
	
	$arr = $this->_model->_web_menu_position();
	$properties = $row_detail['position_id']; //default check
	$views = array('','','checkbox checkbox_item'); //label name class width
    $this->getProperties('7',$arr,$properties,$views);
	echo '<tr><td class="label">Vị trí</td> <td>'.$this->DisplayProperties().$hidden_item.'</td></tr>';
	
	//type_id
	$arr = $this->_model->_web_menu_type();
	$properties = $row_detail['type_id']; //default check
	$views = array('Loại menu','type_id','radio','<br />'); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//parent_id
	$arr = array();
	$arr[] = array('id'=>0, 'name'=>'-- Danh mục gốc --');
	$arr = $this->_model->_web_menu(0, '', $arr);
	$properties = $row_detail['parent_id']; //default check
	$views = array('Danh mục gốc','parent_id','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tên hiển thị','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//title
	$values = $row_detail['title'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly) 
	$views = array('Tiêu đề','title','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name_alias
	$values = $row_detail['name_alias'];
	$properties = array('200',$disabled); //maxlength OTHER (disabled, readonly)
	$views = array('Alias','name_alias','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">Nhấp doubleclick để lấy tên không dấu</span>');
	echo $this->DisplayProperties();
	
	//url
	$values = $row_detail['url'];
	$properties = array('200',$disabled); //maxlength OTHER (disabled, readonly)
	$views = array('Link','url','input_medium url_auto'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">Nhấp doubleclick để lấy link tự động</span>');
	echo $this->DisplayProperties();
	
	//metaDescription
	$values = $row_detail['metaDescription'];
	$properties = ''; //disabled, readonly
	$views = array('Mô tả ngắn','metaDescription','textarea'); //label id&name class colspan
	//$other = ckeditor_custom('metaDescription');
    $this->getProperties('3',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//metaKeyword
	$values = $row_detail['metaKeyword'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Tags (keyword)','metaKeyword','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,'<span class="notes">Nhấp doubleclick để lấy keyword tự động</span>');
	echo $this->DisplayProperties();
	
	//url_hinh
	$values = 'url_hinh'; //field name
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$this->getProperties('6',$values,'',$views);
	$other = $this->DisplayProperties();
	$other .= '<p class="notes">Upload hình ảnh vào thư mục "<strong>catalog</strong>"</p>';
	if($row_detail['url_hinh'] != '') $other .= '<div class="avarta"><img src="'.CONS_IMAGES_CATALOG_THUMBS.$row_detail['url_hinh'].'" /></div>';
	
	$values = $row_detail['url_hinh'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','url_hinh','input_medium'); //label id&name class
    $this->getProperties('1',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//order
	$values = $row_detail['order'];
	$properties = array('3'); //maxlength OTHER (disabled, readonly)
	$views = array('Thứ tự','order','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//other
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Hiện');
	$arr[] = array('id'=>'0', 'name'=>'Ẩn');
	if($row_detail['other']=='') $properties = 0; else $properties = $row_detail['other']; //default check
	$views = array('Hiện trang chủ','other','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
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