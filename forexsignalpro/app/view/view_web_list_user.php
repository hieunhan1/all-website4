<div class="clear_20px" style="margin-bottom:20px"></div>
<?php
if(!isset($_SESSION['user_id']) && $this->_control!='user'){
	include_once('view_web_user_login.php');
} elseif(!isset($_SESSION['user_id']) && $this->_control=='user') {
	header('location: '.CONS_BASE_URL.'/login/');
}else{
	if(!isset($_GET['action'])){
		echo '<div id="change_account"><a href="user/?action=account">Change your account information</a></div>
		<div id="ajax_forex" style="height:auto">';
		include_once('view_web_user_forex.php');
		echo '</div>';
	}elseif($_GET['action']=='account'){
		
	}elseif($_GET['action']=='logout'){
		session_unset('user_id');
		session_unset('user_name');
		session_unset('user_email');
		session_unset('user_group_id');
		header('location: '.CONS_BASE_URL.'/login/');
	}
}
?>