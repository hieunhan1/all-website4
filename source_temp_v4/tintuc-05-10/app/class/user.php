<?php
class user{
	public $m;
	function __construct(){
		$this->m = new model_user;
	}
	
	function login(){
		if ($_POST ==NULL) {header('location:'. BASE_URL); exit();}
		$u = strip_tags($_POST['u']); $p = strip_tags($_POST['p']);
		if (!get_magic_quotes_gpc()){
		   $u = mysql_real_escape_string($u);$p = mysql_real_escape_string($p);
		}
		$this->m->login($u, $p);
		header('location:'. BASE_URL);
	}//login
	
	function thoat(){
		session_destroy();
		header('location:'. BASE_URL);
	}

} //class
?>
