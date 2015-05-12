<?php
/*contact*/
if(isset($_POST['contact_name'])){
	$name = $this->_model->_change_dau_nhay(trim($_POST['contact_name']));
	$email = $this->_model->_change_dau_nhay(trim($_POST['email']));
	$phone = $this->_model->_change_dau_nhay(trim($_POST['phone']));
	$address = $this->_model->_change_dau_nhay(trim($_POST['address']));
	$message = $this->_model->_change_dau_nhay($_POST['message']);
	$product_id = $this->_model->_change_dau_nhay($_POST['id']);
	if($name!='' && $phone!='' && $message!=''){
		$id_contact = $this->_model->_web_contact_insert($name,$email,$phone,$address,$message,$product_id);
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

/*chat online*/
/*if(isset($_POST['chat_online'])){
	$_SESSION['typeUser'] = 1;
	include_once('view_web_support_customer.php');
}

$currentDatetime = time();
$ip_address = $_SERVER['REMOTE_ADDR'];
if(isset($_POST['getCustomer'])){
	$keychat = $currentDatetime;
	$name = $this->_model->_change_dau_nhay($_POST['name']);
	$phone = $this->_model->_change_dau_nhay($_POST['phone']);
	$group_id = 1;
	if($name!='' && $phone!=''){
		$data = $this->_model->_checkCustomer($ip_address);
		$time = $currentDatetime - $data['datetime'];
		if($keychat!=$data['keychat'] && $time>20){
			$result = $this->_model->_insertCustomer($name, $phone, $group_id, $ip_address, $keychat, $currentDatetime);
			$_SESSION['keychat'] = $keychat;
			$_SESSION['nickname'] = $name;
			echo 1;
		}else echo 2;
		return TRUE;
	}else{
		echo 0;
		return FALSE;
	}
}*/
/*end chat online*/
?>