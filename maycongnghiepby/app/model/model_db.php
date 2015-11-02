<?php 
class db{
	public $db;
	public function __construct(){
		$this->db = new mysqli(CONS_HOST, CONS_USER_DB, CONS_PASS_DB, CONS_DB_NAME);
		if($this->db->connect_errno) die( $db->connect_error ); 	
		$this->db->set_charset("utf8");
	}
	public function _changeDauNhay($str){
		$str = str_replace("'",'&#39;', $str);
		$str = str_replace('"','&quot;', $str);
		$str = str_replace('\\','&#92;', $str);
		return $str;
	}
}