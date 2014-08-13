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
		if($action!='') $this->_action=$action; else $this->_action='home';
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
			$user = $this->_model->_change_dau_nhay($_POST['username']);
			$pass = $this->_model->_change_dau_nhay($_POST['password']);
			$result = $this->_model->_xuly_dangnhap($user,$pass);
			if($result==TRUE) header('location: '.CONS_DEFAULT_LINK_LOGIN_ADMIN);
			else $error = 'Tên đăng nhập hoặc mật khẩu sai';
		}
		include_once('view/view_admin_login.php');
	}
	
	public function logout(){
		session_unset('admin_id');
		session_unset('admin_name');
		session_unset('admin_user');
		session_unset('admin_rule_view');
		session_unset('admin_rule_action');
		header('location: '.CONS_DEFAULT_LINK_LOGIN_ADMIN);
		return TRUE;
	}
	
	public function change_password($user){
		$password = $_POST['password'];
		$password_new = $_POST['password_new'];
		$password_repeat = $_POST['password_repeat'];
		if($password_new!=$password_repeat) $error .= " - Mật khẩu mới và mật khẩu nhắc lại không khớp.<br />";
		if( strlen($password_new) > 20 ) $error .= " - Mật khẩu mới phải bé hơn 20 ký tự <br />";
		if( strlen($password_new) < 5 )  $error .= " - Mật khẩu mới phải 6 ký tự trở lên <br />";   
		/* //Mat khau kho
		if( !preg_match("#[0-9]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>SỐ</strong> <br />";  
		if( !preg_match("#[a-z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>THƯỜNG</strong> <br />";   
		if( !preg_match("#[A-Z]+#", $password_new) ) $error .= " - Mật khẩu phải chứa ít nhất 1 ký tự <strong>HOA</strong> <br />";
		*/
		if($error){
			$error = '<p style="color:#F00; font-weight:bold; line-height:20px">Mật khẩu chưa đạt yêu cầu:</p>
			<p style="padding-left:30px; font-style:italic; line-height:20px">'.$error.'</p>';
			return $error;
		}else{
			$result = $this->_model->_kiem_tra_user($user,$password);
			if(!$result){
				$error = '<p style="color:#F00; font-weight:bold; line-height:20px">Mật khẩu cũ không đúng.</p>';
				return $error;
			}else{
				$this->_model->_change_password($user,$password_new);
				$error = '<p style="color:#00F; font-weight:bold; line-height:20px">Đổi mật khẩu thành công.</p>';
				return $error;
			}
		}
	}
	
	public function reset_password($user){
		$id_user_reset = $_GET['id_u'];
		settype($id_user_reset,"int");
		$pass_default = '00112233';
		if($user=='admin') $this->_model->_reset_password($user,$id_user_reset,$pass_default);
		else return FALSE;
	}
	
	public function select_from_all(&$currentpage, &$startrow, &$totalrows, &$url_search, $lang, $str_search='', $select_field='', $order_by=''){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		
		if(isset($_GET['search'])){
			$str_search .= " AND name LIKE '%{$_GET['search']}%' ";
			$url_search .= '&search='.$_GET['search'];
		}
		
		$select = '`id`,`name`,`status`'.$select_field;
		$table  = $this->_action;
		$where  = "`delete`=0 AND lang='{$lang}' ".$str_search;
		$order_by = $order_by.' `id` DESC ';
		
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
	
	public function menu_id(){
		$menu_id = $_GET['menu_id'];
		echo $this->_model->_menu_id($menu_id);
	}
	
	public function create_edit_data($table, &$lable_submit, &$row_detail, &$disabled, &$change_alias){
		$id = $_GET['id'];
		$user_admin = $_SESSION['admin_user'];
		if($id==0){
			$lable_submit = 'Thêm mới';
			$disabled = '';
			$type = 1; /*create*/
			$change_alias = '';/*change_alias*/
		}else{
			$lable_submit = 'Cập nhật';
			$change_alias = '<a href="javascript:;" id="change_alias" style="padding:0 10px; font-weight:bold">Thay đổi</a>';
			$disabled = ' disabled="disabled" ';/*disable field*/
			$type = 2; /*update*/
	
			$row_detail = $this->_model->_view_edit_detail($table,$id);
		}
		
		if(!empty($_POST)){
			if(trim($_POST['name'])!=''){
				$fields = array_keys($_POST);
				$values = array_values($_POST);
				
				$result = $this->_model->_get_sql($type,$table,$fields,$values,$user_admin,$id);
			
				if($result==TRUE){
					echo "<p class='message'>Cập nhật thành công</p>";
					header("location: ".$_SESSION['link_back']);
				}else echo "<p class='error'>{$lable_submit} không được. Vui lòng kiểm tra lại</p>";
			}else echo '<p class="error">Vui lòng nhập dữ liệu</p>';
			
		}else $_SESSION['link_back'] = $_SERVER['HTTP_REFERER'];
	}
	
	public function checks_language(){
		if(!isset($_SESSION['admin_language'])){
			$_SESSION['admin_language'] = 'vi';
		}else{
			if(isset($_GET['lang'])) $_SESSION['admin_language'] = $_GET['lang'];
		}
	}
	
	public function menu_admin($rule_view,$active){
		$data = $this->_model->_web_menu_admin();
		foreach($data as $row){
			if(preg_match("/,{$row['id']},/i", $rule_view)){
				$link = CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$row['url'].'/';
				if($active==$row['url']) $style = 'style="color:#00F"'; else $style = '';
				$str .= '<a href="'.$link.'" '.$style.'>'.$row['name'].$row['ajax'].'</a>';
				if($row['other']==1) $str .= '<hr />';
				
				$str2 .= '<div class="item"><a href="'.$link.'"><img src="'.CONS_ADMIN_CSS_IMG.$row['url_hinh'].'" alt="" /><p>'.$row['name'].'</p></a></div>';
			}
		}
		return array($str,'<div id="chucnang">'.$str2.'</div>');
	}
	
	public function administrator(){
		$this->checks_language(); /*checks language*/
		
		$table = $this->_action;
		$name_admin = $_SESSION['admin_name'];
		$user_admin = $_SESSION['admin_user'];
		$rule_view  = $_SESSION['admin_rule_view'];
		$rule_action = $_SESSION['admin_rule_action'];
		$lang = $_SESSION['admin_language'];
		
		$link_logout  = CONS_DEFAULT_ADMIN_CONTROLLER.'/?user=logout';
		$link_account = CONS_DEFAULT_ADMIN_CONTROLLER.'/?user=account';
		$link_lang 	  = CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?lang=';
		
		/*hiển thị các quyền trong trang admin*/
		$menu_admin = $this->menu_admin($rule_view,$table);
		$menu_admin_left = $menu_admin[0];
		$menu_admin_right = $menu_admin[1];
		
		/*checks view, create || edit*/
		if(isset($_GET['id'])){
			$set_authorities = $rule_action;
			$file_view = "view/view_admin_{$table}_ac.php";
		}else{
			$set_authorities = $rule_view;
			$file_view = "view/view_admin_{$table}.php";
		}
		
		$navigator = $this->_model->_navigator($table);
		if(preg_match("/,{$navigator['id']},/i", $set_authorities)){
			$navigator_name = $navigator['name'];/*name navigator*/
			$languages = $this->_model->_web_languages();/*list language*/
			
			if(isset($_GET['delete_one'])){
				$this->delete_one($user_admin);
				return true;
			}/*delete item*/
			if(isset($_GET['status_one'])){
				$this->status_one($user_admin);
				return true;
			}/*status item*/
			if(isset($_GET['menu_id'])){
				$this->menu_id();
				return true;
			}/*menu_id*/
			if(isset($_GET['ajax'])){
				include_once('view/view_admin_ajax.php');
				return TRUE;
			}/*ajax*/
			
			if(file_exists($file_view)){
				$include = ob_start();
				include_once($file_view);
				$include = ob_get_clean();
			}else $include = '<p style="color:#F00; font-weight:bold; padding: 30px 0 400px 30px">Không tồn tại trang này</p>';
		}else $include = '<p style="color:#F00; font-weight:bold; padding: 40px 0 400px 30px">Không được quyền xem trang này. Vui lòng liên hệ người quản trị để cấp quyền.</p>';
		
		if($_GET['user']==CONS_ADMIN_LOGOUT){
			$this->logout();
			return TRUE;
		}elseif($_GET['user']==CONS_ADMIN_ACCOUNT){
			if(isset($_POST['btnSubmit'])) $message_error = $this->change_password($user_admin);
			$include = ob_start();
			include_once('view/view_admin_account.php');
			$include = ob_get_clean();
		}elseif($_GET['user']==CONS_ADMIN_RESET){
			$this->reset_password($user_admin);
			return TRUE;
		}
		/*end thông tin tài khoản*/
		
		include_once('view/view_admin.php'); /*view*/
	}
	
	public function ckeditor_full($name){
		$dir_ckeditor = 'library/js/';
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
				['Source','Paste','PasteText','PasteFromWord','Bold', 'Italic', '-','RemoveFormat','TextColor','BGColor','NumberedList','BulletedList','-','Outdent','Indent'],
			]
		});
		</script>";
		return $str;
	}
}//class