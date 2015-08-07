<?php
$str='';
if( !(isset($_GET['key']) && isset($_GET['email'])) ){
	include_once('web_user_reset_form.php');
}else{
	$u = new controlUsers;
	$key = $u->_model->_changeDauNhay(trim($_GET['key']));
	$email = $u->_model->_changeDauNhay(trim($_GET['email']));
	$data = $u->_model->_keyResetPass($key, $email);
	if(count($data)!=0){
		if($data['status']==0){
			include_once('web_user_reset_update.php');
		}else{
			$str = 'This link had already been used to retrieve the password.';
		}
	}else{
		$str = 'Can not find requested recover password';
	}
	echo '<div class="error">'.$str.'</div>';
}?>