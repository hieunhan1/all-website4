<?php
$model = new modelForex;
$ip_address = $_SERVER['REMOTE_ADDR'];
//$ip_address = '113.187.16.234';
//?ip_address=113.187.16.234&PAYEE_ACCOUNT=U7071279&PAYMENT_AMOUNT=150&PAYMENT_UNITS=USD&PAYMENT_ID=1438315119&name=Nhan&email=hieu_nhan1@yahoo.com&package_id=2
if(isset($_REQUEST['ip_address']) && $_REQUEST['ip_address']==$ip_address){
	$PAYEE_ACCOUNT = $model->_changeDauNhay($_REQUEST['PAYEE_ACCOUNT']);
	$PAYMENT_AMOUNT = $model->_changeDauNhay($_REQUEST['PAYMENT_AMOUNT']);
	$PAYMENT_UNITS = $model->_changeDauNhay($_REQUEST['PAYMENT_UNITS']);
	$PAYMENT_ID = $model->_changeDauNhay($_REQUEST['PAYMENT_ID']);
	$name = $model->_changeDauNhay($_REQUEST['name']);
	$email = $model->_changeDauNhay($_REQUEST['email']);
	$package_id = $model->_changeDauNhay($_REQUEST['package_id']);
	//$ip_address = $model->_changeDauNhay($_REQUEST['ip_address']);
	$status = '2';
	
	$check = $model->_checksPaymentIpAddress($ip_address);
	$time = time() - $check['datetime'];
	if($time>300 && $check['PAYMENT_ID']!=$PAYMENT_ID){
		$token='';
		$fields = array_keys($_REQUEST);
		$values = array_values($_REQUEST);
		for($i=0; $i<count($fields); $i++){
			$token.="[{$fields[$i]}] =&gt; {$values[$i]}<br />";
		}
		/*create payment*/
		$model->_insertPayment($PAYEE_ACCOUNT, $PAYMENT_AMOUNT, $PAYMENT_UNITS, $PAYMENT_ID, $name, $email, $package_id, $ip_address, $token, $lang, $status);
	}
	header('location: '.CONS_BASE_URL.'/payment/success/?payment_id='.$PAYMENT_ID);
	return true;
}

if(isset($_GET['payment_id'])){
	$data = $model->_viewPayment($_GET['payment_id']);
	if(count($data)==0 || $data['status']==0 || $data['status']==3){ echo '<p class="error">Not find the payment</p>'; return false; }
	
	/*create account*/
	if($data['status']==2){
		$check = $model->_checkUserAccount($data['email']);
		$price = (int)($data['price'] * (100 - $data['discount'])/100);
		if($data['PAYMENT_AMOUNT']==$price) $statusPayment=1; else $statusPayment=3;
		if(count($check)==0){
			$datetime = time();
			$expiration = $check['date_expiration'];
			$expiration = $datetime + ( ((int)$data['songay']+1) *24*60*60);
			$pass = '00112233';
			$status = 1;
			$group_id = 1;
			$model->_updatePayment($data['PAYMENT_ID'], $statusPayment);
			if($statusPayment==1) $model->_insertUserAccount($data['name'], $data['email'], $pass, $expiration, $datetime, $status, $group_id);
			else{
				echo '<p class="error">Not find the payment</p>';
				return false;
			}
		}else{
			$expiration = $check['date_expiration'];
			$expiration = $expiration + ( ((int)$data['songay']+1) *24*60*60);
			$model->_updatePayment($data['PAYMENT_ID'], $statusPayment);
			if($statusPayment==1) $model->_updateUserExpiration($data['email'], $expiration);
			else{
				echo '<p class="error">Not find the payment</p>';
				return false;
			}
		}
	}
	
?>
<h1>Thanh toán thành công</h1>
<div style="font-size:110%; padding-left:30px">
    <p>Kính gởi bạn <strong><?php echo $data['name'];?></strong></p>
    <p><strong>Công ty đào tạo và tư vấn Stevbros</strong> – uỷ quyền đào tạo của <strong>Viện Quản Lý Dự Án Hoa Kỳ (PMI)</strong> mã số 3807 – kính chào bạn. Cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
    <p>Stevbros xin thông báo bạn đã đăng ký khoá học thành công và Stevbros đã nhận được học phí của khoá học bạn đăng ký. Thông tin chi tiết như sau:</p>
    <p style="margin-left:30px">
        Payment ID: <strong><?php echo $data['PAYMENT_ID'];?></strong><br />
        Package: <strong><?php echo $data['nameP'];?></strong><br />
        Amount: <strong>$<?php echo number_format($data['PAYMENT_AMOUNT']);?></strong><br />
        Email: <strong><?php echo $data['email'];?></strong><br />
        Datetime: <strong><?php echo $c->_model->_viewDateTime($data['datetime']);?></strong></p>
    <p>Nếu bạn đã đăng ký khoá học qua mạng, Stevbros sẽ cung cấp thông tin tài khoản, mật mã và hướng dẫn truy cập hệ thống học qua mạng của Stevbros qua email của bạn trong vòng 24 giờ. Nếu bạn đã đăng ký khoá học khai giảng định kỳ, Stevbros cũng sẽ liên hệ bạn qua email và phone để thông báo địa điểm cụ thể và tài liệu khoá học trong vòng 24 giờ.</p>
    
    <p>Một lần nữa, cảm ơn bạn đã quan tâm đến các khoá học của Stevbros.</p>
    <p>Trân trọng,<br />
    Stevbros Training. </p>
    <pre><?php //print_r($_REQUEST); ?></pre>
</div>
<?php } ?>