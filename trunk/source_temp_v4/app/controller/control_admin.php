<?php
include_once('control_admin_form.php');
class control_admin extends control_admin_form{
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
			$result = $this->_model->_xuly_dangnhap($_POST['username'],$_POST['password']);
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
		$data = $this->_model->_web_menu_admin();
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
	
	public function select_from_all(&$currentpage, &$startrow, &$totalrows, &$url_search, $lang, $str_search=''){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		
		if(isset($_GET['search'])){
			$str_search .= " AND name LIKE '%{$_GET['search']}%' ";
			$url_search = '&search='.$_GET['search'];
		}
		
		$select = '`id`,`name`,`status`,`date_create`,`date_update`,`user_create`,`user_update`';
		$table  = $this->_action;
		$where  = "`delete`=0 AND lang='{$lang}' ".$str_search;
		$order_by = ' `id` DESC ';
		
		return $this->_model->_select_field_table($select, $table, $where, $order_by, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
	}
	
	public function select_from_menu($lang){
		$where  = " AND lang='{$lang}' ";
		$data = $this->_model->_web_menu(0, '', NULL, $where);
		
		return $data;
	}
	
	public function delete_one($user_admin){
		$id = $_GET['delete_one'];
		$this->_model->_delete_one($this->_action, $id, $user_admin);
	}
	
	public function status_one($user_admin){
		$id = $_GET['id_ac'];
		if($_GET['status_one']==1) $status=0; else $status=1;
		$this->_model->_status_one($this->_action, $id, $status, $user_admin);
	}
	
	public function administrator(){
		$user = $_GET['user'];
		if($user==CONS_ADMIN_LOGOUT){
			$this->logout();
			return TRUE;
		}elseif($user==CONS_ADMIN_ACCOUNT){
			$str = 'ACCOUNT';
			return TRUE;
		}elseif($user==CONS_ADMIN_RESET){
			$str = 'RESET';
			return TRUE;
		}
		/*end thông tin tài khoản*/
		
		
		if(!isset($_SESSION['admin_language'])){
			$_SESSION['admin_language'] = 'vi';
		}else{
			if(isset($_GET['lang'])) $_SESSION['admin_language'] = $_GET['lang'];
		}/*end languages*/
		
		$table = $this->_action;
		$name_admin = $_SESSION['admin_name'];
		$user_admin = $_SESSION['admin_user'];
		$quyen_xem  = $_SESSION['admin_quyen_xem'];
		$quyen_action = $_SESSION['admin_quyen_action'];
		$lang = $_SESSION['admin_language'];
		
		$link_logout  = CONS_DEFAULT_LINK_LOGIN_ADMIN.'?user=logout';
		$link_account = CONS_DEFAULT_LINK_LOGIN_ADMIN.'?user=account';
		$link_lang 	  = CONS_DEFAULT_LINK_LOGIN_ADMIN.$table.'/?lang=';
		
		if($table!='home' || isset($_GET['id'])) $link_cearte = CONS_DEFAULT_LINK_LOGIN_ADMIN.$table.'/?id=0';
		else $link_cearte = 'javascript:;';
		
		/*hiển thị các quyền trong trang admin*/
		$menu_admin = $this->menu_admin($quyen_xem,$table);
		$menu_admin_left = $menu_admin[0];
		$menu_admin_right = $menu_admin[1];
		
		$navigator = $this->_model->_navigator($table);
		if(preg_match("/,{$navigator['id']},/i", $quyen_xem)){
			$navigator_name = $navigator['name'];/*name navigator*/
			$languages = $this->_model->_web_languages();/*list language*/
			
			if(isset($_GET['delete_one'])){
				$this->delete_one($user_admin);
				return true;
			}/*xoa item*/
			if(isset($_GET['status_one'])){
				$this->status_one($user_admin);
				return true;
			}/*xoa item*/
			
			if(isset($_GET['id'])){
				
				$file_view = "view/view_admin_{$table}_ac.php";
			}else{
				$file_view = "view/view_admin_{$table}.php";
			}/*create OR edit*/
			if(file_exists($file_view)){
				$include = ob_start();
				include_once($file_view);
				$include = ob_get_clean();
			}else $include = '<p style="color:#F00; font-weight:bold; padding: 30px 0 400px 30px">Không tồn tại trang này</p>';
		}else $include = '<p style="color:#F00; font-weight:bold; padding: 40px 0 400px 30px">Không được quyền xem trang này. Vui lòng liên hệ người quản trị để cấp quyền.</p>';

		include_once('view/view_admin.php'); /*view*/
	}
	
	public function list_menu_dequi(){
		$data = $this->_model->_web_menu('');
		foreach($data as $row) $data[] = '';
	}
	
	public function ckeditor_full($name){
		$dir_ckeditor = '../../library/';
		$str = "<script>
		CKEDITOR.replace( '{$name}', {
			uiColor: '#b5d8ef',
			filebrowserBrowseUrl: 		'".$dir_ckeditor."ckeditor/ckfinder/ckfinder.php',
			filebrowserImageBrowseUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/ckfinder.php?Type=Images',
			filebrowserFlashBrowseUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/ckfinder.php?Type=Flash',
			//filebrowserUploadUrl: 		'".$dir_ckeditor."ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
			//filebrowserImageUploadUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
			//filebrowserFlashUploadUrl: 	'".$dir_ckeditor."ckeditor/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash',
			filebrowserWindowWidth: '1000',
			filebrowserWindowHeight: '530',
			toolbar:
			[
			['Source','-','Maximize','ShowBlocks','-','Cut','Copy','Paste','PasteText','PasteFromWord','-','Print', 'SpellChecker', 'Scayt'],
			['Undo','Redo','-','Find','Replace','-','RemoveFormat'],
			['Link','Unlink','Iframe'],
			['Image','Flash', 'Video', 'Table'],
			['NumberedList','BulletedList','-','Outdent','Indent','Blockquote','CreateDiv'],
			'/',
			['Styles','Format','Font','FontSize'],
			['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
			['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
			['TextColor','BGColor','-','HorizontalRule','Smiley','SpecialChar','PageBreak']
			]
			});
		</script>";
		return $str;
	}

	public function ckeditor_custom($name){
		$str = "<script>
		CKEDITOR.replace( '{$name}', {
			uiColor: '#b5d8ef',
			toolbar: [
				['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-','RemoveFormat','TextColor','BGColor','NumberedList','BulletedList'],
			]
		});
		</script>";
		return $str;
	}
}//class