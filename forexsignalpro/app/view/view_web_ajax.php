<?php
/*contact*/
if(isset($_POST['contact_name'])){
	$name = $this->_model->_change_dau_nhay(trim($_POST['contact_name']));
	$email = $this->_model->_change_dau_nhay(trim($_POST['email']));
	$phone = $this->_model->_change_dau_nhay(trim($_POST['phone']));
	$address = $this->_model->_change_dau_nhay(trim($_POST['address']));
	$message = $this->_model->_change_dau_nhay($_POST['message']);
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		$id_contact = $this->_model->_web_contact_insert($name,$email,$phone,$address,$message);
		$title = $name;
		$subject = 'No-reply | Contact';
		$body = '<div style="line-height:18px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$name.'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$message.'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?id_contact='.$id_contact.'">Click vào đây để xem thông tin</a></p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$this->_config['email'],'name'=>'Admin');
		//$add_cc = '';
		//$add_bcc = array();
		//$add_bcc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Tran Nhan');
		//$add_bcc[] = array('email'=>'tanhao.lee@gmail.com','name'=>'Hao Le');
		ob_start();
		$this->_model->_sendmail($title,$subject,$body,$add_address,$add_cc,$add_bcc);
		ob_get_clean();
		echo 1;
		return true;
	}else return false;
}

if(isset($_GET['id_contact'])){
	$id = $_GET['id_contact'];
	$row = $this->_model->_web_contact_detail($id);
	if(count($row) > 1){
		if($row['status']!=1) $this->_model->_web_contact_update($id);
		include_once('view_web_detail_contact.php');
	}
}

if(isset($_POST['google_map'])){
	$id_map = trim($_POST['google_map']);
	$id_map = $this->_model->_change_dau_nhay($id_map);
	$name = trim($_POST['name']);
	$name = $this->_model->_change_dau_nhay($name);
	if($id_map!='' && $name!=''){
		include_once('view_web_google_map.php');
	}
}
/*end contact*/

/*login*/
if(isset($_POST['login'])){
	$email = $this->_model->_change_dau_nhay($_POST['email']);
	$pass = $this->_model->_change_dau_nhay($_POST['password']);
	$ip_address = $_SERVER['REMOTE_ADDR'];
	echo $this->user_login($email, $pass, $ip_address);
	return true;
}
if(isset($_POST['forexRealTime']) && isset($_SESSION['user_id'])){
	include_once('view_web_user_forex_realtime.php');
	return true;
}
if(isset($_POST['forexTrend']) && isset($_SESSION['user_id'])){
	include_once('view_web_user_forex_trend.php');
	return true;
}
if(isset($_POST['forexSupport']) && isset($_SESSION['user_id'])){
	include_once('view_web_user_forex_support.php');
	return true;
}
if(isset($_POST['changePassword'])){
	$check = $this->user_change_passowrd();
	if($check==1) echo '<span style="font-weight:bold; color:#00F">Successful password change</span>';
	else echo '<span class="error">'.$check.'</span>';
	return true;
}
/*end login*/

if(isset($_POST['autoCurrency'])){
	$currency = $this->_model->_change_dau_nhay($_POST['autoCurrency']);
	
	include_once('../php/simple_html_dom.php');
	$url = 'http://globalcurrencies.xignite.com/xGlobalCurrencies.json/GetRealTimeRate?Symbol='.$currency.'&_token=48F61AA6188F45668A01662A73995C4F';
	$html = file_get_html($url)->plaintext;
	$html = json_decode($html);
	echo '<tr><td align="center">&nbsp;</td>';
	echo '<td align="center">'.$currency.'</td>';
	echo '<td align="center">'.number_format($html->Bid,5).'</td>';
	echo '<td align="center">'.number_format($html->Ask,5).'</td>';
	echo '<td align="center">'.number_format($html->Spread,5).'</td></tr>';
	return true;
}

if(isset($_POST['changeTimeZone'])){
	$idTimeZone = $this->_model->_change_dau_nhay($_POST['changeTimeZone']);
	settype($idTimeZone, "int");
	include_once('view_web_timezone.php');
	return true;
}
?>