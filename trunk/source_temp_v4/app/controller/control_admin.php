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
	
	function menu_admin($link_cpadmin){
		$quyen_xem = $_SESSION['admin_quyen_xem'];
		$data = $this->_model->web_menu_admin();
		foreach($data as $row){
			if(preg_match("/,{$row['id']},/i", $quyen_xem)){
				$str .= '<a href="'.$link_cpadmin.$row['url'].'/">'.$row['name'].$row['ajax'].'</a>';
				if($row['other']==1) $str .= '<hr />';
			}
		}
		return $str;
	}
	
	function administrator(){
		if($_GET['user']==CONS_ADMIN_LOGOUT){
			$this->logout();
		}
		$name_admin = $_SESSION['admin_name'];
		$user_admin = $_SESSION['admin_user'];
		
		$link_cpadmin = CONS_BASE_URL.'/'.CONS_DEFAULT_ADMIN_CONTROLLER.'/';
		$link_logout  = $link_cpadmin.'?user=logout';
		$link_account = $link_cpadmin.'?user=account';
		
		$menu_admin = $this->menu_admin($link_cpadmin);
		
		include_once('view/view_admin.php');
	}
}//class