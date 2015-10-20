<?php
class modelAjax extends modelDB{
	public function _config($lang){
		$sql = "SELECT * FROM `web_config` WHERE status=1 AND lang='{$lang}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()){
			$data[$row['name_var']] = $row['value'];
		}
		return $data;
	}
	
	public function _statusOne($table, $id, $status){
		$sql = "UPDATE `{$table}` SET `status`='{$status}' WHERE `id`='{$id}' LIMIT 1";
		$this->db->query($sql);
		
		if($status==1) $status=0; else $status=1;
		$backup = new modelBackupRestore;
		$backup->_backupData($id, $name, $table);
		$backup->_webLog($name, 'status', $table, $_SESSION['adminUser'], $status, $_SESSION['adminLang']);
		return true;
	}
	public function _deleteOne($table, $id){
		$backup = new modelBackupRestore;
		$content = $backup->_backupData($id, $name, $table);
		$backup->_webLog($name, 'delete', $table, $_SESSION['adminUser'], $content, $_SESSION['adminLang']);
		
		$sql = "DELETE FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		$this->db->query($sql);
		return true;
	}
	public function _urlMenu($id){
		$sql = "SELECT `url` FROM `web_menu` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _ajaxNumberItem($table){
		$sql = "SELECT count(*) FROM `{$table}` WHERE `status`=0";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	public function _checkUrl($table, $url, $id){
		$sql = "SELECT count(*) FROM `{$table}` WHERE `status`=1 AND `url`='{$url}' AND `id`<>'{$id}' ";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_row();
		return $row[0];
	}
	
	public function _checksIpAddress($table, $ipAddress){
		$sql = "SELECT `datetime` FROM `{$table}` WHERE `ip_address`='{$ipAddress}' ORDER BY `datetime` DESC LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _viewDetail($table, $id, $ipAddress){
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' AND `ip_address`='{$ipAddress}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _updateStatus($table, $id){
		$sql = "UPDATE `{$table}` SET `status`=1 WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _webContactInsert($name, $email, $phone, $address, $message, $ipAddress){
		$date = time();
		$sql = "INSERT INTO `web_contact` (`name`, `email`, `phone`, `address`, `message`, `ip_address`, `datetime`) VALUES ('{$name}', '{$email}', '{$phone}', '{$address}', '{$message}', '{$ipAddress}', '{$date}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $this->db->insert_id;
	}
	
	/*send mail user*/
	public function _viewRealTimeOrder($id){
		$sql = "SELECT `web_real_time`.*, `web_currency`.`name` as nameCurrency FROM `web_real_time`, `web_currency` WHERE `web_real_time`.`id`='{$id}' AND  `currency_id`=`web_currency`.`id` LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	public function _updateRealTimeOrder($id){
		$sql = "UPDATE `web_real_time` SET `sendmail`=1 WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	public function _listSendMailUser(){
		$datetime = time();
		$sql = "SELECT `name`, `email` FROM `web_users` WHERE `status`=1 AND `group_id`=1 AND `date_expiration`>'{$datetime}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	/*end send mail user*/
}
?>