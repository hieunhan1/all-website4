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
	echo 1;
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


?>