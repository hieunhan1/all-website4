<div class="container">
    <div class="clear30"></div>
    <?php
    if(isset($_SESSION['userId']) && isset($_SESSION['userExpiration'])){
		$table = 'web_users';
		$id = $_SESSION['userId'];
		$user = $c->_model->_viewDetailID($table, $id);
		$expiration = $user['date_expiration'];
		
		echo '<div id="welcome">Welcome, '.$_SESSION['userName'].'.</div>
        <div id="change_account">
            <a href="user/?ac=account">Change your account information</a>
            <a href="user/?ac=changepass">Change password</a>
        </div>
        <div class="clear10"></div>';
		
		if($expiration > time()){
			if(!isset($_GET['ac'])) $ac=''; else $ac=$_GET['ac'];
			switch($ac){
				case '': include_once('web_user_info.php');
					break;
				case 'realtime': include_once('web_user_forex_realtime.php');
					break;
				case 'trend': include_once('web_user_forex_trend.php');
					break;
				case 'support': include_once('web_user_forex_support.php');
					break;
				case 'account': include_once('web_user_account.php');
					break;
				case 'changepass': include_once('web_user_changepass.php');
					break;
				case 'logout': $c = new controlUsers; $c->logout_user(CONS_BASE_URL.'/user/');
					break;
				default: echo '<div class="clear30"></div>'; break;
			}
		}else{
			include_once('web_user_info.php');
		}
	}elseif($arrUrl['currentPage']=='reset'){
		include_once('web_user_reset.php');
	}else{
		include_once('web_user_login.php');
	}
	?>
</div>
<div class="clear30" style="margin-bottom:50px"></div>