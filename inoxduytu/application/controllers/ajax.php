<?php
class controlAjax{
	public $_lang;
	public $_model;
	public function __construct(){
		$this->_model = new modelAjax;
		$this->_lang = $this->language();
	}
	public function language(){
		if(!isset($_POST['lang']))
			return CONS_DEFAULT_LANG;
		else
			return $_POST['lang'];
	}
	public function config($lang){
		$file_lang = "languages/lang_{$lang}.php";
		if (file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_config($lang);
	}
	public function menuId($menu_id){
		$m = explode(',', $menu_id);
		$total = count($m);
		$id = $m[$total-2];
		$row = $this->_model->_urlMenu($id);
		return $row['url'];
	}
	
	public function sendmail($title, $subject, $body, $add_address, $add_cc='', $add_bcc=''){
		include_once('libraries/sendmail/class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->IsSMTP(); // Gọi đến class xử lý SMTP
		$mail->Host = CONS_HOST_SMTP_SERVER; // tên SMTP server
		$mail->SMTPDebug = 2; // enables SMTP debug information (for testing): 1 = errors and messages, 2 = messages only
		$mail->SMTPAuth = true; // Sử dụng đăng nhập vào account
		$mail->Port = 25; // Thiết lập cổng gửi email của máy
		$mail->Username = CONS_SEND_MAIL_ACCOUNT; // SMTP account username
		$mail->Password = CONS_SEND_MAIL_PASSWORD; // SMTP account password
		$mail->IsHTML(true);
		$mail->SetFrom(CONS_SEND_MAIL_ACCOUNT, $title); //Thiet lap thong tin nguoi gui va email nguoi gui
		foreach($add_address as $row) $mail->AddAddress($row['email'],$row['name']); //Thiết lập thông tin người nhận
		if($add_cc!='') foreach($add_cc as $row) $mail->AddCC($row['email'],$row['name']);
		if($add_bcc!='') foreach($add_bcc as $row) $mail->AddBCC($row['email'],$row['name']);
		$mail->CharSet = "utf-8";
		$mail->Subject = $subject; //Thiết lập tiêu đề
		$mail->Body = $body; //Thiết lập nội dung chính của email
		if($mail->Send()) return true;
	}
}

$c = new controlAjax;
$lang = $c->_lang;
$config = $c->config($lang);

/*admin*/
if(isset($_SESSION['adminId'])){
	if(isset($_POST['status_one'])){
		$status = $c->_model->_changeDauNhay($_POST['status_one']); settype($status, "int");
		$table = $c->_model->_changeDauNhay($_POST['table']);
		$id = $c->_model->_changeDauNhay($_POST['id']); settype($id, "int");
		if($table!='' && $id!=''){
			$c->_model->_statusOne($table, $id, $status);
		}else return false;
	}
	
	if(isset($_POST['delete_one'])){
		$table = $c->_model->_changeDauNhay($_POST['table']);
		$id = $c->_model->_changeDauNhay($_POST['delete_one']); settype($id, "int");
		if($table=='' || $id=='') return false;
		$c->_model->_deleteOne($table, $id);
		return true;
	}
	
	if(isset($_POST['ajaxRestore'])){
		$id=$_POST['ajaxRestore']; settype($id, "int");
		$backup = new modelBackupRestore;
		echo $backup->_restoreData($id);
		return true;
	}
	
	if(isset($_POST['linkDeatil'])){
		$menu_id = $c->_model->_changeDauNhay($_POST['menu_id']);
		if($menu_id=='') return false;
		echo $c->menuId($menu_id);
		return true;
	}
	if(isset($_POST['checkLinkDeatil'])){
		$id = $c->_model->_changeDauNhay($_POST['checkLinkDeatil']); settype($id, 'int');
		$table = $c->_model->_changeDauNhay($_POST['table']);
		$url = $c->_model->_changeDauNhay($_POST['url']);
		echo $c->_model->_checkUrl($table, $url, $id);
		return true;
	}
	
	if(isset($_POST['ajaxNumberItem'])){
		$table = $c->_model->_changeDauNhay($_POST['table']);
		if($table=='') return false;
		echo $c->_model->_ajaxNumberItem($table);
		return true;
	}
	
	//send mail Real Time Orders
	if(isset($_POST['sendMailRealTime'])){
		$id = $c->_model->_changeDauNhay($_POST['sendMailRealTime']); settype($id, 'int');
		$data = $c->_model->_viewRealTimeOrder($id);
		if($data['oders']==1) $oders='<span style="color:#00F; font-weight:bold">BUY</span>';
		else $oders='<span style="color:#F00; font-weight:bold">SELL</span>';
		
		$i=0;
		$add_bcc = array();
		$dataU = $c->_model->_listSendMailUser();
		$total = count($dataU);
		foreach($dataU as $row){
			$i++;
			if($i%20 != 0){
				$add_bcc[] = array('email'=>$row['email'], 'name'=>$row['name']);
			}else{
				$add_bcc[] = array('email'=>$row['email'], 'name'=>$row['name']);
				$title = 'Real Time Order';
				$subject = 'No-reply | Real Time Order - ForexSignalPro';
				$body = '<div style="line-height:150%; color:#333; font-size:12pt">
					<h3 style="font-size:150%; margin-bottom:20px">Hi,</h3>
					<p>ForexSignalPro.Net vừa mới phát lệnh tư vấn.</p>
					<p>Datetime: '.$c->_model->_viewDateTime($data['datetime']).'</p>
					<p>Currency: '.$data['nameCurrency'].'</p>
					<p>Oders: '.$oders.'</p>
					<p>Entry point: '.$data['entry_point'].'</p>
					<p>Take profit: '.$data['take_profit'].'</p>
					<p>Stop loss: '.$data['stop_loss'].'</p>
					<p>Thanks and Best regards,</p>
				</div>';
				$add_address = array();
				$add_address[] = array('email'=>$config['email'], 'name'=>'ForexSignalPro.Net');
				$add_cc='';
				ob_start();
				$c->sendmail($title, $subject, $body, $add_address, $add_cc, $add_bcc);
				ob_get_clean();
				
				$add_bcc = array();
			}
		}
		
		$title = 'Real Time Order';
		$subject = 'No-reply | Real Time Order - ForexSignalPro';
		$body = '<div style="line-height:150%; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Hi,</h3>
			<p>ForexSignalPro.Net vừa mới phát lệnh tư vấn.</p>
			<p>Datetime: '.$c->_model->_viewDateTime($data['datetime']).'</p>
			<p>Currency: '.$data['nameCurrency'].'</p>
			<p>Oders: '.$oders.'</p>
			<p>Entry point: '.$data['entry_point'].'</p>
			<p>Take profit: '.$data['take_profit'].'</p>
			<p>Stop loss: '.$data['stop_loss'].'</p>
			<p>Thanks and Best regards,</p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$config['email'], 'name'=>'ForexSignalPro.Net');
		$add_cc='';
		
		ob_start();
		$c->sendmail($title, $subject, $body, $add_address, $add_cc, $add_bcc);
		ob_get_clean();
		
		$c->_model->_updateRealTimeOrder($id);
		
		echo $total;
		return true;
	}
	
	//analytic
	if(isset($_POST['viewAnalytic'])){
		$model = new modelAnalytic;
		$id = $model->_changeDauNhay($_POST['viewAnalytic']);
		$dataA = $model->_viewNewAnalytic($id);
		
		$dateStart = $dataA['datetime'];
		$dateStartY = date('Y', $dateStart);
		$dateStartM = (int)date('m', $dateStart);
		$dateEndY = date('Y', $dateStart);
		if($dateStartY==$dateEndY && $dateStartM<12)
			$dateEndM = (int)date('m', $dateStart) + 1;
		else{
			$dateEndY++;
			$dateEndM = 1;
		}
		$dateStart = strtotime(date("{$dateStartY}-{$dateStartM}-01"));
		$dateEnd = strtotime(date("{$dateEndY}-{$dateEndM}-01"));
		
		$str='';
		if($dataA['table']=='web_users'){
			$table='Bảng thống kê user';
			
			if($dataA['other']==1){
				$data = $model->_analyticAllUser($dataA['value']);
			}else{
				$data = $model->_analyticUser($dateStart, $dateEnd);
			}
			
			$total = count($data);
			$str.='<ul id="analytic">';
			foreach($data as $row){
				$str .= '<li class="item">Name: '.$row['name'].'<br />Email: '.$row['email'].'<br /> Expiration: '.$model->_viewDateTime($row['date_expiration']).'</li>';
			}
			$str.='</ul>';
		}else{
			$statusPayment = array('cancel', 'success', 'check', 'error');
			$table='Bảng thống kê thanh toán - Trạng thái: <em>"'.$statusPayment[$dataA['value']].'"</em>';
			$data = $model->_analyticPayment($dateStart, $dateEnd, $dataA['value']);
			$total = count($data);
			$str.='<ul id="analytic">';
			foreach($data as $row){
				$str .= '<li class="item">Name: '.$row['name'].'<br />
				Email: '.$row['email'].'<br />
				Package ID: '.$row['package_id'].'<br />
				AMOUNT: '.$row['PAYMENT_AMOUNT'].'$<br />
				Datetime: '.$model->_viewDateTime($row['datetime']).'</li>';
			}
			$str.='</ul>';
		}
		echo '<div id="total">'.$dataA['name'].' - '.$table.' - Tổng cộng: '.$total.'</div>';
		echo $str;
	}
}
/*end admin*/

/*login user*/
if(isset($_POST['login'])){
	$c = new controlUsers;
	$email = trim($_POST['email']);
	$pass = $_POST['password'];
	$ip_address = $_SERVER['REMOTE_ADDR'];
	$group = 1;
	echo $c->login($email, $pass, $ip_address, $group);
	return true;
}

if( isset($_SESSION['userId']) && $_SESSION['userExpiration']>time() ){
	if(isset($_POST['forexRealTime'])){
		include_once('view/web_user_forex_realtime.php');
		return true;
	}
	if(isset($_POST['forexTrend'])){
		include_once('view/web_user_forex_trend.php');
		return true;
	}
	if(isset($_POST['forexSupport'])){
		include_once('view/web_user_forex_support.php');
		return true;
	}
	if(isset($_POST['changePassword'])){
		$c = new controlUsers;
		$check = $c->userChangePassowrd();
		if($check==1) echo '<span style="font-weight:bold; color:#00F">Successful password change</span>';
		else echo '<span class="error">'.$check.'</span>';
		return true;
	}
}
/*end login user*/

/*reset pass*/
if(isset($_POST['resetPass'])){
	$u = new controlUsers;
	$email = $u->_model->_changeDauNhay(trim($_POST['email']));
	$data = $u->_model->_checksUserEmail($email);
	if(count($data)!=0){
		$dataR = $u->_model->_checksResetEmail($email);
		$datetime = time();
		$checkTime = $datetime - $dataR['datetime'];
		if($checkTime > 300){
			$name = $email;
			$ip_address = $_SERVER['REMOTE_ADDR'];
			$key = $u->_model->_randString(10);
			$u->_model->_insertResetEmail($name, $email, $ip_address, $key, $datetime);
			
			$title = 'Reset Password';
			$subject = 'No-reply | Reset Password ForexSignalPro';
			$body = '<div style="line-height:20px; color:#333; font-size:12pt">
				<h3 style="font-size:150%; margin-bottom:20px">Hi, '.$data['name'].'</h3>
				<p>To retrieve your password please <a href="'.CONS_BASE_URL.'/user/reset/?key='.$key.'&email='.$email.'">click here.</a></p>
				<p>Thanks and Best regards,</p>
			</div>';
			$add_address = array();
			$add_address[] = array('email'=>$email, 'name'=>$data['name']);
			ob_start();
			$c->sendmail($title, $subject, $body, $add_address);
			ob_get_clean();
			echo '<span class="message">An email was sent to <b>'.$email.'</b> please check your mailbox.</span>';
		}else{
			echo '<span class="message">An email was sent to <b>'.$email.'</b> please check your mailbox. Try again after 5 minutes if not received the email to reset your password.</span>';
		}
		return true;
	}else{
		echo '<span class="error">Not found <b>'.$email.'</b> email</span>';
		return false;
	}
}
if(isset($_POST['updateResetPass'])){
	$u = new controlUsers;
	$email = $u->_model->_changeDauNhay(trim($_POST['email']));
	$key = $u->_model->_changeDauNhay(trim($_POST['key']));
	$pass = $u->_model->_changeDauNhay(trim($_POST['pass']));
	
	$data = $u->_model->_keyResetPass($key, $email);
	if(count($data)!=0 && $data['status']==0){
		$u->_model->_updateResetPassword($email, $key);
		$u->_model->_resetPassword($email, $pass);
		echo 'Reset password success. <a href="user/"><b>Login</b></a>';
	}else{
		echo 'Error';
	}
}
/*end reset pass*/

/*web*/
if(isset($_POST['webContact'])){
	$name = $c->_model->_changeDauNhay(trim($_POST['webContact']));
	$email = $c->_model->_changeDauNhay(trim($_POST['email']));
	$phone = $c->_model->_changeDauNhay(trim($_POST['phone']));
	$address = $c->_model->_changeDauNhay(trim($_POST['address']));
	$message = $c->_model->_changeDauNhay($_POST['message']);
	$ipAddress = $_SERVER['REMOTE_ADDR'];
	$table = 'web_contact';
	$check = $c->_model->_checksIpAddress($table, $ipAddress);
	$check = time() - $check['datetime'];
	if($check<30){
		echo 2;
		return false;
	}
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		$idContact = $c->_model->_webContactInsert($name, $email, $phone, $address, $message, $ipAddress);
		$title = $name;
		$subject = 'No-reply | Contact';
		$body = '<div style="line-height:20px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$name.'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$message.'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?idContact='.$idContact.'&ipAddress='.$ipAddress.'">Click vào đây để xem thông tin</a></p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$config['email'], 'name'=>'Admin');
		/*$add_cc = array();
		$add_cc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Tran Nhan');
		$add_bcc = array();
		$add_bcc[] = array('email'=>'tanhao.lee@gmail.com','name'=>'Hao Le');*/
		$c->sendmail($title, $subject, $body, $add_address);
	}else echo 0;
	return true;
}
if(isset($_GET['idContact'])){ //view detail contact
	if(!isset($_GET['ipAddress'])) return false;
	$id = $c->_model->_changeDauNhay($_GET['idContact']);
	$ipAddress = $c->_model->_changeDauNhay($_GET['ipAddress']);
	$table = 'web_contact';
	$row = $c->_model->_viewDetail($table, $id, $ipAddress);
	include_once('view/web_contact_detail.php');
	if($row['status']==0) $c->_model->_updateStatus($table, $id);
	return true;
}
if(isset($_POST['google_map'])){
	$id_map = trim($_POST['google_map']);
	$id_map = $c->_model->_changeDauNhay($id_map);
	$name = trim($_POST['name']);
	$name = $c->_model->_changeDauNhay($name);
	if($id_map!='' && $name!=''){
		include_once('web_google_map.php');
	}
}

if(isset($_POST['changeTimeZone'])){
	$idTimeZone = $c->_model->_changeDauNhay($_POST['changeTimeZone']);
	if($idTimeZone=='') return false;
	$c = new controlGerenal;
	settype($idTimeZone, "int");
	include_once('view/web_timezone.php');
	return true;
}
/*end web*/