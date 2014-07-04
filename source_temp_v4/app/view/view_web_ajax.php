<?php
//print_r($_SESSION);
if(isset($_POST['order_sp'])){
	$this->order_sp();
	echo '<script>
	$(document).ready(function(){
		$("#cart_icon").html("'.count($_SESSION['list_order_sp_name']).'");
	});
	</script>';
}

/*dat hang & check phi giao hang*/
if(isset($_POST['data_quanhuyen'])){
	$id = $_POST['data_quanhuyen'];
	$str = '<option value="">Chọn Quận - Huyện</option>';
	
	if($id!=''){
		$data = $this->_model->_web_ds_tinhthanh($id);
		$_SESSION['order_sp_phigiao'] = $_SESSION['phigiaohang_tinhthanh'] = $data[0]['phigiaohang'];
		$_SESSION['order_sp_thanhtien'] = $_SESSION['order_sp_tongtien'] + $_SESSION['order_sp_phigiao'];
		
		$data = $this->_model->_web_ds_quanhuyen($id);
		foreach($data as $row) $str .= '<option value="'.$row['id'].'">'.$row['name'].'</option>';
	}else{
		$_SESSION['order_sp_phigiao'] = $_SESSION['phigiaohang_tinhthanh'] = 0;
		$_SESSION['order_sp_thanhtien'] = $_SESSION['order_sp_tongtien'] + $_SESSION['order_sp_phigiao'];
	}
	echo $str;
}
if(isset($_POST['phi_quanhuyen'])){
	$id = $_POST['phi_quanhuyen'];
	if($id!=''){
		$data = $this->_model->_web_ds_quanhuyen(0,$id);
		$_SESSION['order_sp_phigiao'] = $_SESSION['phigiaohang_tinhthanh'] + $data[0]['phigiaohang'];
		$_SESSION['order_sp_thanhtien'] = $_SESSION['order_sp_tongtien'] + $_SESSION['order_sp_phigiao'];
	}else{
		$_SESSION['order_sp_phigiao'] = $_SESSION['phigiaohang_tinhthanh'];
		$_SESSION['order_sp_thanhtien'] = $_SESSION['order_sp_tongtien'] + $_SESSION['order_sp_phigiao'];
	}
	echo number_format($_SESSION['order_sp_phigiao'],0,',','.').'-|-'.number_format($_SESSION['order_sp_thanhtien'],0,',','.');
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
	$tinh_thanh = checks_number($_POST['tinh_thanh']);
	$quan_huyen = checks_number($_POST['quan_huyen']);
	$diachi = checks_text($_POST['diachi'],2);
	$tongtien = $_SESSION['order_sp_tongtien'];
	$tongsoluong = $_SESSION['order_sp_tongsoluong'];
	$phigiaohang = $_SESSION['order_sp_phigiao'];
	$giamgia = 0;
	$thanhtien = $_SESSION['order_sp_thanhtien'];
	
	if($email==false) return false;
	if($name==false) return false;
	if($phone==false) return false;
	if($tinh_thanh==false) return false;
	if($quan_huyen==false) return false;
	if($diachi==false) return false;
	
	$order_id = rand(0,9).date('dmis');
	$this->_model->_web_product_order_insert($order_id,$name,$email,$phone,$tinh_thanh,$quan_huyen,$diachi,$tongtien,$tongsoluong,$phigiaohang,$giamgia,$thanhtien);
	
	$giamgia = 0;
	$data = $this->order_sp_view();
	foreach($data as $row){
		$this->_model->_web_product_order_detail_insert($row['name'],$row['id'],$order_id,$row['soluong'],$row['giaban'],$giamgia,$row['thanhtien']);
	}
	echo $order_id;
}
/*end dat hang & check phi giao hang*/

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