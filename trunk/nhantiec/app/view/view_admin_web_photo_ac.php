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
	
	//menu_id
	$values = $row_detail['menu_id'];
	$views = array('menu_id', 'value_checks_box'); //name class
    $this->getProperties('2',$values,'',$views);
	$hidden_item = $this->DisplayProperties();
	
	$where = " AND (type_id=1 OR type_id=5) AND lang='{$lang}' ";
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
	
	//img_avatar
	$values = 'img_avatar'; //field name
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$this->getProperties('6',$values,'',$views);
	$other = $this->DisplayProperties();
	$other .= '<p class="notes">Upload hình ảnh vào thư mục "<strong>photos</strong>"</p>';
	if($row_detail['img_avatar'] != '') $other .= '<div class="avarta"><img src="'.CONS_IMAGES_PHOTOS_THUMBS.$row_detail['img_avatar'].'" /></div>';
	
	$values = $row_detail['img_avatar'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Hình ảnh','img_avatar','input_medium'); //label id&name class
    $this->getProperties('1',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//order
	$values = $row_detail['order'];
	$properties = array('3'); //maxlength OTHER (disabled, readonly) 
	$views = array('Thứ tự','order','input_medium'); //label id&name class style
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