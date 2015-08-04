<?php
$model = new modelForex;
$ip_address = $_SERVER['REMOTE_ADDR'];
if(isset($_REQUEST['ip_address']) && $_REQUEST['ip_address']==$ip_address){
	$PAYEE_ACCOUNT = $model->_changeDauNhay($_REQUEST['PAYEE_ACCOUNT']);
	$PAYMENT_AMOUNT = $model->_changeDauNhay($_REQUEST['PAYMENT_AMOUNT']);
	$PAYMENT_UNITS = $model->_changeDauNhay($_REQUEST['PAYMENT_UNITS']);
	$PAYMENT_ID = $model->_changeDauNhay($_REQUEST['PAYMENT_ID']);
	$name = $model->_changeDauNhay($_REQUEST['name']);
	$email = $model->_changeDauNhay($_REQUEST['email']);
	$package_id = $model->_changeDauNhay($_REQUEST['package_id']);
	//$ip_address = $model->_changeDauNhay($_REQUEST['ip_address']);
	$status = '0';
	
	$check = $model->_checksPaymentIpAddress($ip_address);
	$time = time() - $check['datetime'];
	if($time>60 && $check['PAYMENT_ID']!=$PAYMENT_ID){
		$token='';
		$fields = array_keys($_REQUEST);
		$values = array_values($_REQUEST);
		for($i=0; $i<count($fields); $i++){
			$token.="[{$fields[$i]}] =&gt; {$values[$i]}<br />";
		}
		$model->_insertPayment($PAYEE_ACCOUNT, $PAYMENT_AMOUNT, $PAYMENT_UNITS, $PAYMENT_ID, $name, $email, $package_id, $ip_address, $token, $lang, $status);
	}
	header('location: '.CONS_BASE_URL.'/payment/error/?payment_id='.$PAYMENT_ID);
	return true;
}

if(isset($_GET['payment_id'])){
	$data = $model->_viewPayment($_GET['payment_id']);
	if(count($data)==0 || $data['status']==1){ echo '<p class="error">Not find the payment</p>'; return false; }
?>
<h1>Payment failed</h1>
<div style="font-size:110%; padding-left:30px">
    <p><strong>Dear customers,</strong></p>
    <p>Thank you for your interest in the course of ForexSignalPro online payment.</p>
    <p>We regret to inform your transaction is not successful at this time.</p>
    <p>If you need support, please email to <a href="mailto:<?php echo $config['email'];?>" style="font-weight:bold"><?php echo $config['email'];?></a>. We are happy to serve you.</p>
    <p>Respect,<br />Forex Signal Pro.</p>
</div>
<?php } ?>
<pre><?php //print_r($_REQUEST); print_r($_SERVER); ?></pre>
