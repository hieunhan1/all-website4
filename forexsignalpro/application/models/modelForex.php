<?php
class modelForex extends modelDB{
	public function _listRealTime($limit=8){
		$sql = "SELECT `web_real_time`.*, `web_currency`.`name` as `currency` FROM `web_real_time`,`web_currency` WHERE `web_real_time`.`status`=1 AND `currency_id`=`web_currency`.`id` ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _listCurrency(){
		$sql = "SELECT `id`,`name`,`average` FROM `web_currency` WHERE `status`=1 ORDER BY `order`";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _webTrend($limit=8){
		$sql = "SELECT `web_trend`.*, `web_currency`.`name` as `currency` FROM `web_trend`,`web_currency` WHERE `web_trend`.`status`=1 AND `currency_id`=`web_currency`.`id` ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _webSupportResistance($limit=8){
		$sql = "SELECT `web_support_resistance`.*, `web_currency`.`name` as `currency` FROM `web_support_resistance`,`web_currency` WHERE `web_support_resistance`.`status`=1 AND `currency_id`=`web_currency`.`id` ORDER BY `datetime` DESC LIMIT {$limit}";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	
	public function _checksPaymentIpAddress($ip_address){
		$sql = "SELECT `PAYMENT_ID`, `datetime` FROM `web_payment` WHERE `ip_address`='{$ip_address}' ORDER BY `id` DESC LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _insertPayment($PAYEE_ACCOUNT, $PAYMENT_AMOUNT, $PAYMENT_UNITS, $PAYMENT_ID, $name, $email, $package_id, $ip_address, $token, $lang, $status){
		$datetime = time();
		$sql = "INSERT INTO `web_payment` (`PAYEE_ACCOUNT`, `PAYMENT_AMOUNT`, `PAYMENT_UNITS`, `PAYMENT_ID`, `name`, `email`, `package_id`, `ip_address`, `token`, `datetime`, `lang`, `status`) VALUES ('{$PAYEE_ACCOUNT}', '{$PAYMENT_AMOUNT}', '{$PAYMENT_UNITS}', '{$PAYMENT_ID}', '{$name}', '{$email}', '{$package_id}', '{$ip_address}', '{$token}', '{$datetime}', '{$lang}', '{$status}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _viewPayment($id){
		$sql = "SELECT `web_payment`.*, `web_users_package`.`name` as nameP, `price`, `discount`, `songay` FROM `web_payment`, `web_users_package` WHERE `PAYMENT_ID`='{$id}' AND `web_users_package`.`id`=`package_id` LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _checkUserAccount($email){
		$sql = "SELECT `id`, `name`, `date_expiration` FROM `web_users` WHERE `email`='{$email}' AND `group_id`=1 AND `status`=1 LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _insertUserAccount($name, $email, $pass, $expiration, $datetime, $status, $group_id){
		$pass = md5($pass);
		$sql = "INSERT INTO `web_users` (`name`, `email`, `password`, `date_expiration`, `datetime`, `status`, `group_id`) VALUES ('{$name}', '{$email}', '{$pass}', '{$expiration}', '{$datetime}', '{$status}', '{$group_id}' )";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	public function _updatePayment($id, $status){
		$sql = "UPDATE `web_payment` SET `status`='{$status}' WHERE `PAYMENT_ID`='{$id}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	public function _updateUserExpiration($email, $expiration){
		$sql = "UPDATE `web_users` SET `date_expiration`='{$expiration}' WHERE `email`='{$email}' AND `status`=1 LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
}
?>