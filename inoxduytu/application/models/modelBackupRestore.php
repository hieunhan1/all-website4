<?php
class modelBackupRestore extends modelDB{
	/*web_log
	Fields & values:	fields%%%values
	Giá trị field:		,
	Giá trị nội dung:	%%%
	*/
	public function _backupData($id, &$name, $table){
		$sql = "SELECT * FROM `{$table}` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		$name = $row['name'];
		$str_keys=''; $str_values='';
		$row_keys = array_keys($row);
		$row_values = array_values($row);
		for($i=0; $i<count($row_keys); $i++){
			$str_keys .= "`{$row_keys[$i]}`,";
			$str_values .= "{$row_values[$i]}%%%";
		}
		$str_keys = trim($str_keys,',');
		$str_values = trim($str_values,'%%%');
		return $str_keys.'fields%%%values'.$str_values;
	}
	public function _webLog($name, $action, $table, $user, $content, $lang){
		$time = time();
		$sql = "INSERT INTO `web_logs` (`name`, `action`, `table`, `datetime`, `username`, `content`, `lang`, `status`) VALUES ('{$name}', '{$action}', '{$table}', '{$time}', '{$user}', '{$content}', '{$lang}', '0')";
		$this->db->query($sql);
	}
	public function _restoreData($id){
		$sql = "SELECT `action`,`table`,`content` FROM `web_logs` WHERE `id`='{$id}' LIMIT 1";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		$row = $result->fetch_assoc();
		$data = explode('fields%%%values', $row['content']);
		$data_keys = explode(',', $data[0]);
		$data_values = explode('%%%', $data[1]);
		if($row['action']=='delete'){
			$str_keys=''; $str_values='';
			for($i=0; $i<count($data_keys); $i++){
				$str_keys .= "{$data_keys[$i]},";
				$str_values .= "'{$data_values[$i]}',";
			}
			$str_keys = trim($str_keys, ','); $str_values = trim($str_values, ',');
			$str_sql = "INSERT INTO `{$row['table']}` ({$str_keys}) VALUES ({$str_values})";
		}elseif($row['action']=='update'){
			$str_set='';
			for($i=0; $i<count($data_keys); $i++){
				if($data_keys[$i]!='`id`') $str_set .= "{$data_keys[$i]}='{$data_values[$i]}',";
				else $id_restore = $data_values[$i];
			}
			$str_set = trim($str_set, ',');
			$str_sql = "UPDATE `{$row['table']}` SET {$str_set} WHERE `id`='{$id_restore}'";
		}else return false;
		
		if(!$this->db->query($str_sql)) die($this->db->error);
		else{
			$sql = "UPDATE `web_logs` SET `status`=1, `date_restore`='".time()."', `user_restore`='".$_SESSION['adminUser']."' WHERE id='{$id}' ";
			$this->db->query($sql);
			return true;
		}
	}
	public function _clearLogs(){
		$dateCurrent = time();
		$dateClear = 90*24*60*60;
		$datetime = $dateCurrent-$dateClear;
		$sql = "DELETE FROM `web_logs` WHERE `datetime`<'{$datetime}'";
		if(!$result = $this->db->query($sql)) die($this->db->error);
		return true;
	}
}