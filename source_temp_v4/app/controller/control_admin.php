<?php
class control_admin{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
	function __construct($control,$action,$data){
		$this->_model	= new model_admin;
		$this->_control	= $control;
		$this->_action	= $action;
		$this->_data	= $data;
	}//construct

	function index(){
		echo "{$this->_control} <br /> {$this->_action} <br /> {$this->_data} <br />";
		if(!isset($_SESSION['admin_id'])){
			$this->frm_login();
		}else{
			$this->login();
		}
	}//index
	
	function frm_login(){
		if(isset($_POST['btnLogin'])){
			$result = $this->_model->xuly_dangnhap($_POST['username'],$_POST['password']);
			if($result==TRUE) $error = 'Login thành công';
			else $error = 'Tên đăng nhập hoặc mật khẩu sai';
		}
		include_once('view/view_admin_login.php');
	}
	
	function login(){
		echo 'đăng nhập';
	}
}//class