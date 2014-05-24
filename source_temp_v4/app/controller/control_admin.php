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
	}

	function index(){
		if(!isset($_SESSION['admin_id'])){
			$this->frm_login();
		}else{
			$this->administrator();
		}
	}
	
	function frm_login(){
		if(isset($_POST['btnLogin'])){
			$result = $this->_model->xuly_dangnhap($_POST['username'],$_POST['password']);
			if($result==TRUE) header('location: '.CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER);
			else $error = 'Tên đăng nhập hoặc mật khẩu sai';
		}
		include_once('view/view_admin_login.php');
	}
	
	function logout(){
		session_unset('admin_id');
		session_unset('admin_name');
		session_unset('admin_user');
		session_unset('admin_quyen_xem');
		session_unset('admin_quyen_action');
		header('location: '.CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER);
	}
	
	function administrator(){
		if($_GET['user']==CONS_ADMIN_LOGOUT){
			$this->logout();
		}
	}
}//class