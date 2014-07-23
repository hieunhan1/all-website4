<?php 
class db{
	public $db;
	public function __construct(){
		$this->db = new mysqli(CONS_HOST, CONS_USER_DB, CONS_PASS_DB, CONS_DB_NAME);
		if($this->db->connect_errno) die( $db->connect_error ); 	
		$this->db->set_charset("utf8");
	}
}