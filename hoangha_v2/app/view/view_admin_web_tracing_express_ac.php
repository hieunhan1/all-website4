<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'0', 'name'=>'Chưa phát');
	$arr[] = array('id'=>'2', 'name'=>'Đang phát');
	$arr[] = array('id'=>'3', 'name'=>'Đang vận chuyển');
	$arr[] = array('id'=>'1', 'name'=>'Đã đến nơi');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	if($row_detail['id']!='') $readonly='readonly="readonly"';
	$values = $row_detail['name'];
	$properties = array('20', $readonly); //maxlength OTHER (disabled, readonly) 
	$views = array('Mã bill','name','input_medium','style="background-color:#DDD"'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//send_to
	$values = $row_detail['send_to'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Nơi gửi','send_to','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//send_post_offices
	$values = $row_detail['send_post_offices'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Bưu cục gửi','send_post_offices','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//send_datetime
	if($row_detail['send_datetime']==0) $values = $this->view_datetime(time());
	else $values = $this->view_datetime($row_detail['send_datetime']);
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày gửi','send_datetime','input_large datetimepick'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//category
	$values = $row_detail['category'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Loại hàng','category','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//weight
	$values = $row_detail['weight'];
	$properties = array('10'); //maxlength OTHER (disabled, readonly) 
	$views = array('Trọng lượng','weight','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	echo '<tr><td colspan=2><div style="height:2px; background-color:#CCC; margin:5px 300px 5px 30px"></div></td></tr>';
	
	//receive_form
	$values = $row_detail['receive_form'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Người nhận','receive_form','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//receive_post_offices
	$values = $row_detail['receive_post_offices'];
	$properties = array('50'); //maxlength OTHER (disabled, readonly) 
	$views = array('Bưu cục nhận','receive_post_offices','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//receive_datetime
	if($row_detail['receive_datetime']==0) $values = $this->view_datetime(time());
	else $values = $this->view_datetime($row_detail['receive_datetime']);
	$properties = array('20'); //maxlength OTHER (disabled, readonly) 
	$views = array('Ngày nhận','receive_datetime','input_large datetimepick'); //label id&name class style
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