<?php
class model_laythongtin{
	public $db;
	public function __construct(){
		$this->db= new mysqli(HOST, USER_DB, PASS_DB, DB_NAME);
		if($this->db->connect_errno) die( $db->connect_error ); 	
		$this->db->set_charset("utf8");
	}	
	
	function luutinmoilay($kq){
	  $sql=sprintf("INSERT INTO laytudong SET tieude='%s', tomtat='%s', 
	  urlhinh='%s', content='%s', source='%s', urlgoc='%s', ngay=NOW()", 
	  $this->db->escape_string($kq['tieude']), 
		$this->db->escape_string($kq['tomtat']), 
	  $this->db->escape_string($kq['urlhinh']),
	  $this->db-> escape_string ($kq['content']), 
	  $kq['source'], $kq['urlbv']) ;
	  if(!$rs = $this->db->query($sql)) die( $this->db->error. " - ".$urlbv);	
	}

	function cancel($idbv){
	   settype($idbv,"int");
	   $sql = "UPDATE laytudong SET daduyet=1 WHERE idbv = $idbv";
	   if (!$kq=$this->db->query($sql)) die($this->db->error);
	}

	function xem1bai($idbv){
	   settype($idbv,"int");
	   $sql= "SELECT idbv,tieude,tomtat,content FROM laytudong WHERE idbv=$idbv";
	   if (!$kq=$this->db->query($sql)) die($this->db->error);
	   $row = $kq->fetch_assoc();
	   return $row;
	}



}//class

?>