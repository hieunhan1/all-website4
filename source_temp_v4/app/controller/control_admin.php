<?php
class control_admin{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
	public function __construct($control,$action,$data){
		$this->_model	= new model_admin;
		$this->_control	= $control;
		if($action!='') $this->_action	= $action; else $this->_action	= 'home';
		$this->_data	= $data;
	}

	public function index(){
		if(!isset($_SESSION['admin_id'])){
			$this->frm_login();
		}else{
			$this->administrator();
		}
	}
	
	public function frm_login(){
		if(isset($_POST['btnLogin'])){
			$result = $this->_model->xuly_dangnhap($_POST['username'],$_POST['password']);
			if($result==TRUE) header('location: '.CONS_DEFAULT_LINK_LOGIN_ADMIN);
			else $error = 'Tên đăng nhập hoặc mật khẩu sai';
		}
		include_once('view/view_admin_login.php');
	}
	
	public function logout(){
		session_unset('admin_id');
		session_unset('admin_name');
		session_unset('admin_user');
		session_unset('admin_quyen_xem');
		session_unset('admin_quyen_action');
		header('location: '.CONS_DEFAULT_LINK_LOGIN_ADMIN);
	}
	
	public function menu_admin($quyen_xem,$active){
		$data = $this->_model->web_menu_admin();
		foreach($data as $row){
			if(preg_match("/,{$row['id']},/i", $quyen_xem)){
				$link = CONS_DEFAULT_LINK_LOGIN_ADMIN.$row['url'].'/';
				if($active==$row['url']) $style = 'style="color:#00F"'; else $style = '';
				$str .= '<a href="'.$link.'" '.$style.'>'.$row['name'].$row['ajax'].'</a>';
				if($row['other']==1) $str .= '<hr />';
				
				$str2 .= '<div class="item"><a href="'.$link.'"><img src="'.CONS_ADMIN_CSS_IMG.$row['url_hinh'].'" alt="" /><p>'.$row['name'].'</p></a></div>';
			}
		}
		return array($str,'<div id="chucnang">'.$str2.'</div>');
	}
	
	public function select_from(&$currentpage, &$startrow, &$totalrows,$str_search=''){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		
		$select = '`id`,`name`,`date_create`,`date_update`,`user_create`,`user_update`';
		$table  = $this->_action;
		$where  = '`delete`=0 '.$str_search;
		
		return $this->_model->select_field_table($select, $table, $where, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
	}
	
	public function administrator(){
		if($_GET['user']==CONS_ADMIN_NAME_LOGOUT) $this->logout();/*logout*/
		if(!isset($_GET['lang'])) $_SESSION['admin_language'] = 'vi';
		else $_SESSION['admin_language'] = $_GET['lang'];
		
		$name_admin = $_SESSION['admin_name'];
		$user_admin = $_SESSION['admin_user'];
		$quyen_xem  = $_SESSION['admin_quyen_xem'];
		$quyen_action = $_SESSION['admin_quyen_action'];
		$lang = $_SESSION['admin_language'];
		
		$link_logout  = CONS_DEFAULT_LINK_LOGIN_ADMIN.'?user=logout';
		$link_account = CONS_DEFAULT_LINK_LOGIN_ADMIN.'?user=account';
		$link_lang 	  = CONS_DEFAULT_LINK_LOGIN_ADMIN.$this->_action.'/?lang=';
		
		if($this->_action!='home' || isset($_GET['id'])) $link_cearte = CONS_DEFAULT_LINK_LOGIN_ADMIN.$this->_action.'/?id=0';
		else $link_cearte = 'javascript:;';
		
		$menu_admin = $this->menu_admin($quyen_xem,$this->_action);
		$menu_admin_left = $menu_admin[0];
		$menu_admin_right = $menu_admin[1];
		
		$navigator = $this->_model->navigator($this->_action);
		if(preg_match("/,{$navigator['id']},/i", $quyen_xem)){
			$navigator_name = $navigator['name'];/*name navigator*/
			$languages = $this->_model->languages();/*list language*/
			if(isset($_GET['id'])){
				$id = $_GET['id'];/*lay id*/
				$file_view = "view/view_admin_{$this->_action}_ac.php";
			}else{
				$file_view = "view/view_admin_{$this->_action}.php";
			}/*create OR edit*/
			if(isset($_GET['delete_one'])){
				echo 'xoa abc '.$_GET['delete_one'];
				return true;
			}/*xoa item*/
			if(isset($_GET['status_one'])){
				echo $_SERVER['REQUEST_URI'];
				return true;
			}/*xoa item*/
			
			if(file_exists($file_view)){
				$include = ob_start();
				include_once($file_view);
				$include = ob_get_clean();
			}else $include = '<p style="color:#F00; font-weight:bold; padding: 30px 0 400px 30px">Không tồn tại trang này</p>'.$link_lang;
		}else $include = '<p style="color:#F00; font-weight:bold; padding: 40px 0 400px 30px">Không được quyền xem trang này. Vui lòng liên hệ người quản trị để cấp quyền.</p>';
		

		
		include_once('view/view_admin.php');
	}
}//class