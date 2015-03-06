<?php
/*action create, edit*/
$this->create_edit_data($table, $arr_action, $row_detail);

echo '<p style="color:#360; font-size:110%">Lưu ý: Khi tạo tài khoản password mặc định là "<b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b>"</p>';

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
	
	//group_id
	$arr = $this->_model->_web_users_group();
	$properties = $row_detail['group_id']; //default check
	$views = array('Group (nhóm)','group_id','input_medium'); //label id&name class
    $this->getProperties('5',$arr,$properties,$views);
	echo $this->DisplayProperties();
	
	//name
	$values = $row_detail['name'];
	$properties = array('100'); //maxlength OTHER (disabled, readonly) 
	$views = array('Họ tên','name','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//username
	$values = $row_detail['username'];
	$properties = array('32',$arr_action['disabled']); //maxlength OTHER (disabled, readonly)
	$views = array('Username','username','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//phone
	$values = $row_detail['phone'];
	$properties = array('30'); //maxlength OTHER (disabled, readonly) 
	$views = array('Điện thoại','phone','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//email
	$values = $row_detail['email'];
	$properties = array('60'); //maxlength OTHER (disabled, readonly) 
	$views = array('Email','email','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	//address
	$values = $row_detail['address'];
	$properties = array('250'); //maxlength OTHER (disabled, readonly) 
	$views = array('Địa chỉ','address','input_medium'); //label id&name class style
    $this->getProperties('1',$values,$properties,$views);
	echo $this->DisplayProperties();
	
	/*phan quyen tren website*/
	$arr = $this->_model->_web_menu_admin();
	
	$properties = $row_detail['rule_view']; //default check
	$views = array('Xem','','checkbox checkbox_xem','width:167px; height:270px;'); //label name class width
	$this->getProperties('7',$arr,$properties,$views);
	$xem = $this->DisplayProperties();
	
	$properties = $row_detail['rule_action']; //default check
	$views = array('Quyền','','checkbox checkbox_action','width:167px; height:270px;'); //label name class width
	$this->getProperties('7',$arr,$properties,$views);
	$quyen = $this->DisplayProperties();
	
	$values = $row_detail['rule_view'];
	$views = array('rule_view', 'value_rule_view'); //name class
    $this->getProperties('2',$values,'',$views);
	$xem .= $this->DisplayProperties();
	
	$values = $row_detail['rule_action'];
	$views = array('rule_action', 'value_rule_action'); //name class
    $this->getProperties('2',$values,'',$views);
	$quyen .= $this->DisplayProperties();
	
	echo '<tr><td class="label">Quyền trên website</td> <td>'.$xem.$quyen.'</td></tr>';
	/*end phan quyen tren website*/
	
	//password
	if($_GET['id']==0){
		$values = md5(CONS_ADMIN_PASSWORD_DEFAULT);
		$views = array('password'); //name class
		$this->getProperties('2',$values,'',$views);
		echo $this->DisplayProperties();
	}
	
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

if($this->_user=='admin') echo '<p><a href="javascript:;" id="reset_pass">Reset password (Password: "<b>'.CONS_ADMIN_PASSWORD_DEFAULT.'</b>")</a></p>';