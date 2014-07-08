<?php
//print_r($_SESSION);
/*contact*/
if(isset($_POST['contact_name'])){
	$name = trim($_POST['contact_name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = $_POST['message'];
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		$id_contact = $this->_model->_web_contact_insert($name,$email,$phone,$diachi,$message);
		
		$title = $name;
		$subject = 'No-reply | Liên hệ';
		$body = '<div style="line-height:18px; color:#333; font-size:12pt">
			<h3 style="font-size:150%; margin-bottom:20px">Chào ban quản trị website.</h3>
			<p>Bạn  <span style="text-transform:uppercase; font-weight:bold">'.$name.'</span> để lại lời nhắn sau:</p>
			<p style="color:#666; margin-bottom:20px">'.$message.'</p>
			<p style="font-weight:bold; font-style:italic">Thông tin người liên hệ: <a href="'.CONS_BASE_URL.'/ajax/?id_contact='.$id_contact.'">Click vào đây để xem thông tin</a></p>
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$row_config['email'],'name'=>'Admin');
		ob_start();
		$this->_model->_sendmail($title,$subject,$body,$add_address);
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
/*end contact*/

/*sale page*/
if(isset($_GET['form_register'])){
	include_once('view/view_web_sale_page_register.php');
}

if(isset($_GET['register'])){
	$name = trim($_GET['register']);
	$email = trim($_GET['email']);
	$phone = trim($_GET['phone']);
	$address = trim($_GET['address']);
	$service_id = trim($_GET['service_id']);
	$service_name = trim($_GET['service_name']);
	
	if($name!='' && $email!='' && $phone!='' && $address!='' && $service_id!=''){
		$this->_model->_web_register_insert($name,$email,$phone,$address,$service_id,$service_name);
		
		$title = "Dịch vụ AN PHÁT";
		$subject = strtolower("Đăng ký {$service_name}");
		$body = '<div style="line-height:18px; color:#333; font-size:12pt">
			Thông báo bạn đăng ký thành công
		</div>';
		$add_address = array();
		$add_address[] = array('email'=>$email,'name'=>$name);
		$add_bcc = array();
		$add_bcc[] = array('email'=>$row_config['email'],'name'=>'Admin');
		ob_start();
		$this->_model->_sendmail($title,$subject,$body,$add_address,'',$add_bcc);
		ob_get_clean();
		
		echo 1;
	}
}
/*end sale page*/