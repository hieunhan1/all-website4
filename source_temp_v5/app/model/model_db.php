<?php 
class db{
	public $db;
	public function __construct(){
		$this->db = new mysqli(CONS_HOST, CONS_USER_DB, CONS_PASS_DB, CONS_DB_NAME);
		if($this->db->connect_errno) die( $db->connect_error ); 	
		$this->db->set_charset("utf8");
	}
	
	//$arr = array('from'=>'', 'field'=>'', 'values'=>'');
	public function _sql_create($arr){
		$from	= $arr['from'];
		$field	= $arr['field'];
		$values	= $arr['values'];
		$sql = "INSERT INTO {$from} ({$field}) VALUES ({$values})";
		return $sql;
	}
	
	//$arr = array('select'=>'', 'from'=>'', 'where'=>'', 'order'=>'', 'limit'=>'');
	public function _sql_select($arr){
		$select	= $arr['select'];
		$from	= $arr['from'];
		if($arr['where']!='') $where = 'WHERE '.$arr['where'];
		if($arr['order']!='') $order = 'ORDER BY '.$arr['order'];
		if($arr['limit']!='') $limit = 'LIMIT '.$arr['limit'];
		$sql = "SELECT {$select} FROM {$from} {$where} {$order} {$limit}";
		return $sql;
	}
	
	//$arr = array('from'=>'', 'set'=>'', 'where'=>'');
	public function _sql_update($arr){
		$from	= $arr['from'];
		$set	= $arr['set'];
		if($arr['where']!='') $where = 'WHERE '.$arr['where'];
		$sql = "UPDATE {$from} SET {$set} {$where} ";
		return $sql;
	}
	
	/*function*/
	public function _date_time_vietnam(){
		$timezone = +7; //(GMT +7:00)  
        return gmdate("Y-m-d H:i:s", time() + 3600*($timezone+date("0"))); 
	}
	public function _table_field($table){
		$name = str_replace('web_','',$table);
		return $name;
	}
	/*end function*/
}