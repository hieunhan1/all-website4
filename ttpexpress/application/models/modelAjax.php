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
		//$this->_webLog($name, 'status', $table, $user, $status, $lang);
		return true;
	}
	public function _deleteOne($table, $id){
		//$content = $this->_backupData($id, $name, $table);
		$sql = "DELETE FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		$this->db->query($sql);
		//$this->_webLog($name, 'delete', $table, $user, $content, $lang);
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
	public function _viewDetail($table, $id, $name){
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' AND `name`='{$name}' LIMIT 1";
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
}
?>