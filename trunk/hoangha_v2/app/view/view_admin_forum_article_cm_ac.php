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
	if($row_detail['datetime']!=0) $values = $this->view_datetime($row_detail['datetime']);
	$properties = array('20', $arr_action['disabled']);  
	$views = array('Ngày','datetime','input_large'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	if($row_detail['id']!='') $readonly='readonly="readonly"';
	$values = $row_detail['name'];
	$properties = array('200', $readonly);  
	$views = array('Username','name','input_medium', 'style="background-color:#DDD"'); 
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//article_id
	$other = '<p style="color:#00F; font-style:italic">'.$this->_model->_forum_article_name($row_detail['article_id']).'</p>';
	$values = $row_detail['article_id'];
	$properties = array('10', $arr_action['disabled']);  
	$views = array('ID bài viết','article_id','input_medium', 'style="background-color:#DDD"'); 
    $this->getProperties('1',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//content
	$values = $row_detail['content'];
	$properties = '';
	$views = array('Nội dung','content','textarea','colspan=2');
	$other = $this->ckeditor_full('content');
    $this->getProperties('3',$values,$properties,$views,$other);
	echo $this->DisplayProperties();
	
	//lang
	$values = $lang;
	$views = array('lang'); 
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//id
	$values = $row_detail['id'];
	$views = array('id'); 
    $this->getProperties('2',$values,'',$views);
	echo $this->DisplayProperties();
	
	//btn_cancel
	$other = '<input type="button" name="btn_cancel" id="btn_cancel" value="Hủy" class="submit" onClick="window.location.href=\''.$_SESSION['link_back'].'\'" />';
	
	//btn_submit
	$properties = ''; 
	$views = array($arr_action['lable_submit'],'btn_action','submit btn_action'); 
    $this->getProperties('9','',$properties,$views,$other);
	echo $this->DisplayProperties();

echo '</table></form>';