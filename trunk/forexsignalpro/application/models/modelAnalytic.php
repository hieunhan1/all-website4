<?php
class modelAnalytic extends modelDB{
	public function _viewNewAnalytic($id=NULL){
		if($id==NULL) $id=''; else $id="AND `id`='{$id}' ";
		$sql = "SELECT * FROM `web_analytics` WHERE `status`='1' {$id} ORDER BY `id` DESC LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return $result->fetch_assoc();
	}
	
	public function _autoCreateAnalytic($name, $table, $value, $datetime, $lang, $status){
		$sql = "INSERT INTO `web_analytics` (`name`, `table`, `value`, `datetime`, `lang`, `status`) VALUES ('{$name}', '{$table}', '{$value}', '{$datetime}', '{$lang}', '{$status}')";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
	
	public function _analyticUser($dateStart, $dateEnd){
		$sql = "SELECT `name`, `email`, `date_expiration`, `datetime` FROM `web_users` WHERE `status`='1' AND `group_id`=1 AND `datetime`>='{$dateStart}' AND `datetime`<'{$dateEnd}' ORDER BY `id` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
	public function _analyticPayment($dateStart, $dateEnd, $status){
		$sql = "SELECT `name`, `email`, `package_id`, `PAYMENT_AMOUNT`, `datetime` FROM `web_payment` WHERE `status`='{$status}' AND `datetime`>='{$dateStart}' AND `datetime`<'{$dateEnd}' ORDER BY `id` DESC";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$data = array();
		while($row = $result->fetch_assoc()) $data[] = $row;
		return $data;
	}
}