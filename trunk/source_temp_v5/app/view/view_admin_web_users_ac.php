<?php
/*action create, edit*/
$this->create_edit_data($table, $lable_submit, $row_detail, $disabled, $change_alias);

echo '<p style="color:#360; font-size:110%">Lưu ý: Khi tạo tài khoản password mặc định là "<b>00112233</b>"</p>';

echo '<form name="form_action" method="post" action="">
<table width="100%" border="0" cellpadding="0" cellspacing="10" style="margin-bottom:50px">';	
	//status
	$arr = array();
	$arr[] = array('id'=>'1', 'name'=>'Enable');
	$arr[] = array('id'=>'0', 'name'=>'Disable');
	if($row_detail['status']=='') $properties = 1; else $properties = $row_detail['status']; //default check
	$views = array('Trạng thái','status','radio',' &nbsp; '); //label name class other
    $this->getProperties('4',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//username
	$values = $row_detail['username'];
	$properties = array('32',$disabled); //maxlength OTHER (disabled, readonly)
	$views = array('Username','username','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phan quyen
	$arr = $this->_model->_web_menu_admin();
	
	$properties = $row_detail['quyen_xem']; //default check
	$views = array('Xem','','checkbox checkbox_xem','width:167px; height:270px;'); //label name class width
	$this->getProperties('7',$arr,$properties,$views);
	$xem = $this->DisplayProperties();
	
	$properties = $row_detail['quyen_action']; //default check
	$views = array('Quyền','','checkbox checkbox_action','width:167px; height:270px;'); //label name class width
	$this->getProperties('7',$arr,$properties,$views);
	$quyen = $this->DisplayProperties();
	
	$values = $row_detail['quyen_xem'];
	$views = array('quyen_xem', 'value_quyen_xem'); //name class
    $this->getProperties('2',$values,'',$views);
	$xem .= $this->DisplayProperties();
	
	$values = $row_detail['quyen_action'];
	$views = array('quyen_action', 'value_quyen_action'); //name class
    $this->getProperties('2',$values,'',$views);
	$quyen .= $this->DisplayProperties();
	
	echo '<tr><td class="label">Phân quyền</td> <td>'.$xem.$quyen.'</td></tr>';
	
	echo $field_password;
	
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

if($user_admin=='admin') echo '<p><a href="javascript:;" id="reset_pass">Reset password (Password: "<b>00112233</b>")</a></p>';