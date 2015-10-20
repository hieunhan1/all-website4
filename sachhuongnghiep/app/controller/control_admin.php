<?php
include_once('control_admin_form.php');
class control_admin extends control_admin_form{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
	public $_user;
	
	public function __construct($control,$action,$data){
		$this->_model = new model_admin;
		$this->_control = $control;
		if($action!='')
			$this->_action=$action;
		else
			$this->_action='home';
		$this->_data = $data;
		$this->_user = $_SESSION['admin_user'];
	}

	public function index(){
		include_once('error/error_admin.php');
		if(!isset($_SESSION['admin_id']))
			$this->frm_login();
		else
			$this->administrator();
	}
	
	public function frm_login(){
		if(isset($_POST['btnLogin'])){
			$user = $this->_model->_change_dau_nhay($_POST['username']);
			$pass = $this->_model->_change_dau_nhay($_POST['password']);
			if( strlen(trim($user))<4 || strlen($pass)<6 ){
				$error = CONS_LOGIN_FAILED;
			}else{
				$group_id = 3;//group quan tri
				$result = $this->_model->_xuly_dangnhap($user, $pass, $group_id);
				if($result==TRUE) header('location: '.CONS_DEFAULT_LINK_LOGIN_ADMIN);
				else $error = CONS_LOGIN_FAILED;
			}
		}
		include_once('view/view_admin_login.php');
	}
	
	public function administrator(){
		$lang = $this->checks_language(); /*checks language*/
		$table = $this->_action;
		$name_admin = $_SESSION['admin_name'];
		$rule_view  = $_SESSION['admin_rule_view'];
		$rule_action = $_SESSION['admin_rule_action'];
		
		$link_logout  = CONS_DEFAULT_ADMIN_CONTROLLER.'/?user=logout';
		$link_account = CONS_DEFAULT_ADMIN_CONTROLLER.'/?user=account';
		$link_lang 	  = CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$table.'/?lang=';
		
		/*hiển thị các quyền trong trang admin*/
		$menu_admin = $this->menu_admin($rule_view,$table);
		$menu_admin_left = $menu_admin[0];
		$menu_admin_right = $menu_admin[1];
		
		if(isset($_GET['ajax'])){
			include_once('view/view_admin_ajax.php');
			return TRUE;
		}/*ajax*/
		
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
				$this->delete_one($lang);
				return true;
			}/*delete item*/
			if(isset($_GET['status_one'])){
				$this->status_one($lang);
				return true;
			}/*status item*/
			
			if(file_exists($file_view)){
				$include = ob_start();
				include_once($file_view);
				$include = ob_get_clean();
			}else $include = CONS_MESSAGE_RULE_1;
		}else $include = CONS_MESSAGE_RULE_2;
		
		if($_GET['user']==CONS_ADMIN_LOGOUT){
			$this->logout();
			return TRUE;
		}elseif($_GET['user']==CONS_ADMIN_ACCOUNT){
			if(isset($_POST['btnSubmit'])) $message_error = $this->change_password($this->_user);
			$include = ob_start();
			include_once('view/view_admin_account.php');
			$include = ob_get_clean();
		}elseif($_GET['user']==CONS_ADMIN_RESET){
			$this->reset_password($this->_user);
			return TRUE;
		}
		/*end thông tin tài khoản*/
		
		include_once('view/view_admin.php'); /*view*/
	}
	
	public function checks_language(){
		if(!isset($_SESSION['admin_language']))
			$_SESSION['admin_language'] = 'vi';
		else
			if(isset($_GET['lang'])) $_SESSION['admin_language'] = $_GET['lang'];
		return $_SESSION['admin_language'];
	}
	
	public function menu_admin($rule_view,$active){
		$data = $this->_model->_web_menu_admin();
		foreach($data as $row){
			if(preg_match("/,{$row['id']},/i", $rule_view)){
				$link = CONS_DEFAULT_ADMIN_CONTROLLER.'/'.$row['url'].'/';
				if($active==$row['url']) $style = 'style="color:#00F"'; else $style = '';
				if($row['other']==1) $hr='<div style="clear:both; height:4px"><hr /></div>';
				else $hr='';
				$str .= '<a href="'.$link.'" '.$style.'>'.$row['name'].$row['ajax'].'</a>'.$hr;
				$str2 .= '<div class="item"><a href="'.$link.'"><img src="'.CONS_ADMIN_CSS_IMG.$row['url_img'].'" alt="" /><p>'.$row['name'].'</p></a></div>'.$hr;
			}
		}
		return array($str,'<div id="chucnang">'.$str2.'</div>');
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
	
	public function change_password(){
		$password = $this->_model->_change_dau_nhay($_POST['password']);
		$password_new = $this->_model->_change_dau_nhay($_POST['password_new']);
		$password_repeat = $this->_model->_change_dau_nhay($_POST['password_repeat']);
		if($password_new!=$password_repeat) $error .= CONS_MESSAGE_CHANGE_PASS_1;
		if( strlen($password_new) > 20 ) $error .= CONS_MESSAGE_CHANGE_PASS_2;
		if( strlen($password_new) < 5 )  $error .= CONS_MESSAGE_CHANGE_PASS_3;   
		/*
		//Mat khau kho
		if( !preg_match("#[0-9]+#", $password_new) ) $error .= CONS_MESSAGE_CHANGE_PASS_4;  
		if( !preg_match("#[a-z]+#", $password_new) ) $error .= CONS_MESSAGE_CHANGE_PASS_5;   
		if( !preg_match("#[A-Z]+#", $password_new) ) $error .= CONS_MESSAGE_CHANGE_PASS_6;
		*/
		if($error){
			$error = '<p style="color:#F00; font-weight:bold; line-height:20px">'.CONS_MESSAGE_CHANGE_PASS_7.'</p>
			<p style="padding-left:30px; font-style:italic; line-height:20px">'.$error.'</p>';
			return $error;
		}else{
			$result = $this->_model->_kiem_tra_user($this->_user,$password);
			if(!$result){
				$error = '<p style="color:#F00; font-weight:bold; line-height:20px">'.CONS_MESSAGE_CHANGE_PASS_8.'</p>';
				return $error;
			}else{
				$this->_model->_change_password($this->_user,$password_new);
				$error = '<p style="color:#00F; font-weight:bold; line-height:20px">'.CONS_MESSAGE_CHANGE_PASS_9.'</p>';
				return $error;
			}
		}
	}
	
	public function reset_password(){
		$id_user_reset = $_GET['id_u'];
		settype($id_user_reset,"int");
		$pass_default = CONS_ADMIN_PASSWORD_DEFAULT;
		if($this->_user=='admin') $this->_model->_reset_password($id_user_reset,$pass_default);
		else return FALSE;
	}
	
	public function select_from_all($lang, &$arr, $select_field='', $order_by=''){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		if(!empty($_GET)){
			$this->search_data($str_search, $url_search);
		}
		$select = '`id`,`name`,`status`'.$select_field;
		$table  = $this->_action;
		$where  = "lang='{$lang}' ".$str_search;
		$order_by = $order_by.' `id` DESC ';
		$data = $this->_model->_select_field_table($select, $table, $where, $order_by, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
		$arr = array(
			'currentpage'=>$currentpage,
			'startrow'	=>$startrow,
			'totalrows'	=>$totalrows,
			'url_search'=>$url_search
		);
		return $data;
	}
	
	public function select_from_menu($lang, $where=NULL){
		if($where==NULL) $where = " AND lang='{$lang}' ";
		else $where = " AND lang='{$lang}' AND ({$where})";
		$data = $this->_model->_web_menu(0, '', NULL, $where);
		return $data;
	}
	
	public function select_from_slider_banner($lang, &$arr){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		if(!empty($_GET)){
			$this->search_data_forms($str_search, $url_search);
		}
		$table  = $this->_action;
		$select = "{$table}.*, web_slider_banner_position.name as position";
		$all_table = $table.',web_slider_banner_position';
		$where  = "lang='{$lang}' AND position_id=web_slider_banner_position.id ".$str_search;
		$order_by = '`position_id`, `id` DESC ';
		$data = $this->_model->_select_field_table($select, $all_table, $where, $order_by, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
		$arr = array(
			'currentpage'=>$currentpage,
			'startrow'	=>$startrow,
			'totalrows'	=>$totalrows,
			'url_search'=>$url_search
		);
		return $data;
	}
	
	public function select_from_listdistricts($lang, &$arr){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		if(!empty($_GET)){
			$this->search_data_forms($str_search, $url_search);
		}
		$table  = $this->_action;
		$select = "{$table}.*, web_listcity.name as city";
		$all_table = $table.',web_listcity';
		$where  = "{$table}.lang='{$lang}' AND city_id=web_listcity.id ".$str_search;
		$order_by = "`city_id`, {$table}.`order`";
		$data = $this->_model->_select_field_table($select, $all_table, $where, $order_by, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
		$arr = array(
			'currentpage'=>$currentpage,
			'startrow'	=>$startrow,
			'totalrows'	=>$totalrows,
			'url_search'=>$url_search
		);
		return $data;
	}
	
	public function select_from_product_order($lang, &$arr){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		if(!empty($_GET)){
			$this->search_data_forms($str_search, $url_search);
		}
		$table  = $this->_action;
		$select = "{$table}.*, web_listcity.name as city";
		$all_table = $table.',web_listcity';
		$where  = "{$table}.lang='{$lang}' AND city_id=web_listcity.id ".$str_search;
		$order_by = "`datetime` DESC";
		$data = $this->_model->_select_field_table($select, $all_table, $where, $order_by, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
		$arr = array(
			'currentpage'=>$currentpage,
			'startrow'	=>$startrow,
			'totalrows'	=>$totalrows,
			'url_search'=>$url_search
		);
		return $data;
	}
	
	public function select_from_users($lang, &$arr){
		if(!isset($_GET['page'])) $currentpage = 1; else $currentpage = $_GET['page'];
		settype($currentpage,"int");
		$startrow = ($currentpage-1)*CONS_ADMIN_PER_PAGE;
		if(!empty($_GET)){
			$this->search_data_forms($str_search, $url_search);
		}
		$table  = $this->_action;
		$select = "{$table}.*, web_users_group.name as group_name";
		$all_table = $table.',web_users_group';
		$where  = "lang='{$lang}' AND group_id=web_users_group.id ".$str_search;
		$order_by = '`group_id`, `username` ';
		$data = $this->_model->_select_field_table($select, $all_table, $where, $order_by, CONS_ADMIN_PER_PAGE, $startrow, $totalrows);
		$arr = array(
			'currentpage'=>$currentpage,
			'startrow'	=>$startrow,
			'totalrows'	=>$totalrows,
			'url_search'=>$url_search
		);
		return $data;
	}
	
	public function search_data(&$str_search, &$url_search){
		$fields = array_keys($_GET);
		$values = array_values($_GET);
		for($i=0; $i < count($fields)-1; $i++){
			if($fields[$i]!='search' && $fields[$i]!='menu_id'){
				if($values[$i]!='') $str_search .= " AND `{$fields[$i]}`='".$this->_model->_change_dau_nhay($values[$i])."' ";
				$url_search .= "&{$fields[$i]}={$values[$i]}";
			}elseif($fields[$i]=='search'){
				if($values[$i]!='') $str_search .= " AND name LIKE '%".$this->_model->_change_dau_nhay($values[$i])."%' ";
				$url_search .= '&search='.$values[$i];
			}elseif($fields[$i]=='menu_id'){
				if($values[$i]!='') $str_search .= " AND menu_id LIKE '%,".$this->_model->_change_dau_nhay($values[$i]).",%' ";
				$url_search .= '&menu_id='.$values[$i];
			}
		}
	}
	
	public function search_data_forms(&$str_search, &$url_search){
		$fields = array_keys($_GET);
		$values = array_values($_GET);
		$table = $this->_action;
		for($i=0; $i < count($fields)-1; $i++){
			if($fields[$i]!='search'){
				if($values[$i]!='') $str_search .= " AND {$table}.`{$fields[$i]}`='".$this->_model->_change_dau_nhay($values[$i])."' ";
				$url_search .= "&{$fields[$i]}={$values[$i]}";
			}else{
				if($values[$i]!='') $str_search .= " AND {$table}.name LIKE '%".$this->_model->_change_dau_nhay($values[$i])."%' ";
				$url_search .= '&search='.$values[$i];
			}
		}
	}
	
	public function delete_one($lang){
		$id = $_GET['delete_one'];
		settype($id,'int');
		$this->_model->_delete_one($this->_action, $id, $this->_user, $lang);
	}
	
	public function status_one($lang){
		$id = $_GET['id_ac'];
		settype($id,'int');
		$name = $this->_model->_change_dau_nhay($_GET['name']);
		if($_GET['status_one']==1) $status=0; elseif($_GET['status_one']==0) $status=1;
		$this->_model->_status_one($name, $this->_action, $id, $status, $this->_user, $lang);
	}
	
	public function create_edit_data($table, &$arr_action, &$row_detail){
		$id = $_GET['id'];
		settype($id,'int');
		if($id==0){
			$lable_submit = CONS_BTN_CREATE;
			$disabled = '';
			$type = 1; /*create*/
			$change_alias = '';/*change_alias*/
		}else{
			$lable_submit = CONS_BTN_UPDATE;
			$change_alias = '<a href="javascript:;" id="change_alias" style="padding:0 10px; font-weight:bold">Thay đổi</a>';
			$disabled = ' disabled="disabled" ';/*disable field*/
			$type = 2; /*update*/
			$row_detail = $this->_model->_view_edit_detail($table,$id);
		}
		$arr_action = array(
			'lable_submit'=>$lable_submit,
			'disabled'=>$disabled,
			'change_alias'=>$change_alias
		);
		
		if(!empty($_POST)){
			if(trim($_POST['name'])!=''){
				$fields = array_keys($_POST);
				$values = array_values($_POST);
				$result = $this->_model->_get_sql($type,$table,$fields,$values,$id);
			
				if($result==TRUE){
					echo CONS_DATA_ACTION_1;
					header("location: ".$_SESSION['link_back']);
				}else echo CONS_DATA_ACTION_2;
			}else echo CONS_DATA_ACTION_3;
		}else
			$_SESSION['link_back'] = $_SERVER['HTTP_REFERER'];
	}
	
	public function view_datetime($time){
        return date('Y-m-d H:i', $time);
	}
	
	public function ckeditor_full($name){
		$dir_ckeditor = 'js/';
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