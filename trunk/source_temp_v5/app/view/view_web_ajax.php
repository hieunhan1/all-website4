<?php
//print_r($_SESSION);
if(isset($_POST['order_sp'])){
	$this->order_sp();
}

/*dat hang & check phi giao hang*/
if(isset($_POST['data_districts'])){
	$id = $_POST['data_districts'];
	$districts_id = $_POST['districts_id'];
	$str = '<option value="">Chọn Quận - Huyện</option>';
	
	if($id!=''){
		$data = $this->_model->_web_listcity($id);
		$_SESSION['order_deliverycosts'] = $_SESSION['deliverycosts_city'] = $data[0]['deliverycosts'];
		$_SESSION['order_total'] = $_SESSION['order_total_current'] + $_SESSION['order_deliverycosts'];
		
		$data = $this->_model->_web_listdistricts($id);
		foreach($data as $row){
			if($row['id']!=$districts_id) $str .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
			else $str .= '<option value="'.$row['id'].'" selected="selected">'.$row['name'].'</option>';
		}
	}else{
		$_SESSION['order_deliverycosts'] = $_SESSION['deliverycosts_city'] = 0;
		$_SESSION['order_total'] = $_SESSION['order_total_current'] + $_SESSION['order_deliverycosts'];
	}
	echo $str;
}
if(isset($_POST['costs_districts'])){
	$id = $_POST['costs_districts'];
	if($id!=''){
		$data = $this->_model->_web_listdistricts(0,$id);
		$_SESSION['order_deliverycosts'] = $_SESSION['deliverycosts_city'] + $data[0]['deliverycosts'];
		$_SESSION['order_total'] = $_SESSION['order_total_current'] + $_SESSION['order_deliverycosts'];
	}else{
		$_SESSION['order_deliverycosts'] = $_SESSION['deliverycosts_city'];
		$_SESSION['order_total'] = $_SESSION['order_total_current'] + $_SESSION['order_deliverycosts'];
	}
	echo number_format($_SESSION['order_deliverycosts'],0,',','.').'-|-'.number_format($_SESSION['order_total'],0,',','.');
}
if(isset($_POST['dayid']) && isset($_POST['daysoluong'])){
	$dayid = str_replace('&','',$_POST['dayid']);
	$dayid = explode('idSP=',$dayid);
	
	$daysoluong = str_replace('&','',$_POST['daysoluong']);
	$daysoluong = explode('soluong=',$daysoluong);
	
	for($i=0; $i<count($dayid); $i++){
		$id = $dayid[$i];
		$soluong = $daysoluong[$i];
		$_SESSION['list_order_sp_soluong'][$id] = $soluong; 
	}
	include_once('view_web_list_payment_cart.php');
}
if(isset($_POST['order_sp_trash'])){
	$id = trim($_POST['order_sp_trash']);
	if($id=='' || !is_numeric($id)) return false;
	$this->order_sp_trash($id);
	include_once('view_web_list_payment_cart.php');
}
if(isset($_POST['insert_order_sp'])){
	$email = check_email($_POST['insert_order_sp']);
	$name = checks_text($_POST['name'],2);
	$phone = checks_phone($_POST['phone']);
	$city_id = checks_number($_POST['city_id']);
	$districts_id = checks_number($_POST['districts_id']);
	$address = checks_text($_POST['address'],2);
	$other = $_POST['other'];
	$total_current = $_SESSION['order_total_current'];
	$total_number = $_SESSION['order_sp_total_number'];
	$deliverycosts = $_SESSION['order_deliverycosts'];
	$discounts = 0;
	$total = $_SESSION['order_total'];
	
	if($email==false) return false;
	if($name==false) return false;
	if($phone==false) return false;
	if($city_id==false) return false;
	if($districts_id==false) return false;
	if($address==false) return false;
	
	$order_id = time();
	$this->_model->_web_product_order_insert($order_id,$name,$email,$phone,$city_id,$districts_id,$address,$total_current,$total_number,$deliverycosts,$discounts,$total,$other);
	
	$discounts = 0;
	$data = $this->order_sp_view();
	foreach($data as $row){
		$this->_model->_web_product_order_detail_insert($row['name'],$row['soluong'],$row['price'],$discounts,$row['total'],$row['id'],$order_id);
	}
	echo $order_id;
}
/*end dat hang & check phi giao hang*/

/*contact*/
if(isset($_POST['contact_name'])){
	$name = trim($_POST['contact_name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$address = trim($_POST['address']);
	$message = $_POST['message'];
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		$id_contact = $this->_model->_web_contact_insert($name,$email,$phone,$address,$message);
		
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
		$add_cc = '';
		$add_bcc = array();
		$add_bcc[] = array('email'=>'hieunhan112@gmail.com','name'=>'Tran Nhan');
		$add_bcc[] = array('email'=>'tanhao.lee@gmail.com','name'=>'Hao Le');
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
/*end contact*/
?>