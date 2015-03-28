<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

//include_once('view_admin_upload.php');

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';
	/*//img_avatar
	$values = $row_detail['img_avatar'];
	$views = array('img_avatar'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//img_arr
	$values = $row_detail['img_arr'];
	$views = array('img_arr'); //name class
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();*/
	
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
	$views = array('Ngày đăng','datetime','input_large datetimepick'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//menu_id
	$values = $row_detail['menu_id'];
	$views = array('menu_id', 'value_checks_box'); //name class
    $this->getProperties('2',$values,'',$views);
	$hidden_item = $this->DisplayProperties();
	
	$where = " AND (type_id=1 OR type_id=2) AND lang='{$lang}' ";
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
	$properties = array('200',$arr_action['disabled']); //maxlength OTHER (disabled, readonly)
	$views = array('Alias','name_alias','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,$arr_action['change_alias'].'<span class="notes">Nhấp doubleclick để lấy tên không dấu</span>');
	echo $this->DisplayProperties();
	
	//url
	if($row_detail['id'] != 0) $change_url = '<a href="javascript:;" id="change_url" style="padding:0 10px; font-weight:bold">Thay đổi</a>';
	$values = $row_detail['url'];
	$properties = array('200',$arr_action['disabled']); //maxlength OTHER (disabled, readonly)
	$views = array('Link','url','input_medium auto_link_detail'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views,$change_url.'<span class="notes">Nhấp doubleclick để lấy link tự động</span>');
	echo $this->DisplayProperties();
	
	//img_avatar
	$values = 'img_avatar'; //field name
	$views = array('Chọn file ảnh','btnBrowse','button'); //label id&name class
	$this->getProperties('6',$values,'',$views);
	$other = $this->DisplayProperties();
	$other .= '<p class="notes">Upload hình ảnh vào thư mục "<strong>articles</strong>"</p>';
	if($row_detail['img_avatar'] != '') $other .= '<div class="avarta"><img src="'.CONS_IMAGES_ARTICLES_THUMBS.$row_detail['img_avatar'].'" /></div>';
	
	$values = $row_detail['img_avatar'];
	$properties = array('150'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ảnh đại diện','img_avatar','input_medium'); //label id&name class
    $this->getProperties('1',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//description
	$values = $row_detail['description'];
	$properties = ''; //disabled, readonly
	$views = array('Tóm tắt','description','textarea'); //label id&name class colspan
	//$other = $this->ckeditor_custom('description');
    $this->getProperties('3',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//tags
	$values = $row_detail['tags'];
	$properties = array('200'); //maxlength OTHER (disabled, readonly)
	$views = array('Keyword','tags','input_medium'); //label id&name class style
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