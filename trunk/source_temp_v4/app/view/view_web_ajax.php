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

if(isset($_POST['insert_order_sp'])){
	$email = check_email($_POST['insert_order_sp']);
	$name = checks_text($_POST['name'],2);
	$phone = checks_phone($_POST['phone']);
	$tinh_thanh = checks_number($_POST['tinh_thanh']);
	$quan_huyen = checks_number($_POST['quan_huyen']);
	$diachi = checks_text($_POST['diachi'],2);
	
	if($email==false) return false;
	if($name==false) return false;
	if($phone==false) return false;
	if($tinh_thanh==false) return false;
	if($quan_huyen==false) return false;
	if($diachi==false) return false;
	
	$this->_model->_web_product_order_insert($name,$email,$phone,$tinh_thanh,$quan_huyen,$diachi,$tongtien,$tongsoluong,$phigiaohang,$giamgia);
	echo '1';
}

?>