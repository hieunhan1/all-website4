<?php
class control_web{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
	public $_lang;
	public $_config;
	public function __construct($control,$action,$data){
		$this->_model	= new model_web;
		$this->_control	= $control;
		$this->_action	= $action;
		$this->_data	= $data;
	}//construct
	
	public function tag_head($site_name, $site_title, $site_des, $site_key, $site_url, $site_image, $type_name){
		$str = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>'.$site_title.'</title>
<meta name="description" content="'.$site_des.'" />
<meta name="keywords" content="'.$site_key.'" />
<meta name="robots" content="INDEX,FOLLOW"/>
<meta property="og:title" content="'.$site_title.'" />
<meta property="og:description" content="'.$site_des.'" />
<meta property="og:url" content="'.$site_url.'" />
<meta property="og:image" content="'.$site_image.'" />
<meta property="og:site_name" content="'.$site_name.'" />
<meta property="og:type" content="'.$type_name.'" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
';
		return $str;
	}
	
	public function getSubmenu($lang, $parent, $position){
		$data = $this->_model->_web_menu($lang, $parent, $position);
		if($data){
			$view = '<ul>';
			foreach($data as $row){
				$view .= '<li><a href="'.$row['url'].'">'.$row['name'].'</a>';
				$view .= $this->getSubmenu($lang, $row['id'], $position);
				$view .= '</li>';
			}
			$view .= '</ul>';
		}
		return $view;
	}
	
	public function navigator($parent,$lang,$arr=NULL){
		if(!$arr) $arr=array();
		if($parent==0){
			if($lang=='vi') $arr[] = array('name'=>'Trang chủ', 'url'=>'');
			else $arr[] = array('name'=>'Home', 'url'=>'?lang=en');
			return array_reverse($arr);
		}
		$row = $this->_model->_web_menu_one($parent);
		$arr[] = array('name'=>$row['name'], 'url'=>$row['url']);
		$arr = $this->navigator($row['parent'], $lang, $arr);
		return $arr;
	}
	
	public function web_config($lang){
		if($lang!='') $file_lang = "languages/lang_{$lang}.php";
		else $file_lang = "languages/lang_".CONS_LANG_DEFAULT.".php";
		
		if(file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_web_config($lang);
	}
	
	public function language(){
		if(!isset($_GET['lang'])) return CONS_LANG_DEFAULT; else return $_GET['lang'];
	}
	
	public function home_page(){
		$type = 1; //type trang chủ là 1
		$row = $this->_model->_web_menu_type($type, $this->_lang);
		if($row['url_img']=='') $site_image = CONS_IMAGE_DEFAULT;
		else $site_image = CONS_IMAGES_CATALOG.$row['url_img'];
		$type_menu = $this->menu_type($row['type_id']);
		$current_menu = array(
			'id'=>$row['id'],
			'name'=>strip_tags($row['name']),
			'title'=>strip_tags($row['title']),
			'description'=>strip_tags($row['description']),
			'keyword'=>strip_tags($row['tags']),
			'url'=>CONS_BASE_URL.'/'.$row['url'],
			'image'=>CONS_BASE_URL.'/'.$site_image,
			'lang'=>strip_tags($row['lang']),
			'type_menu_id'=>$type_menu['id'],
			'type_menu_name'=>$type_menu['name'],
			'type_menu_img'=>$type_menu['url_img'],
			'type_menu_img_thumb'=>$type_menu['url_img_thumb'],
			'root_id'=>$row['id'],
			'root_name'=>strip_tags($row['name']),
			'root_url'=>CONS_BASE_URL.'/'.$row['url'],
		);
		include_once('view/view_web_home_page.php');
		return $current_menu;
	}
	
	public function current_menu(){
		$alias_menu = $this->_control;
		$currentpage = $this->_data;
		
		if( $row = $this->_model->_web_menu_one($alias_menu) ){
			$this->_lang = $row['lang'];
			if($row['url_img']=='') $site_image = CONS_IMAGE_DEFAULT;
			else $site_image = CONS_IMAGES_CATALOG.$row['url_img'];
			
			$type_menu = $this->menu_type($row['type_id']);
			
			if($row['parent']!=0){
				$menu_root_id = $this->_model->_web_menu_root($row['parent'], $row['id'], $menu_root_name, $menu_root_url);
			}else{
				$menu_root_id = $row['id'];
				$menu_root_name = $row['name'];
				$menu_root_url = $row['url'];
			}
			
			$arr = array(
				'id'=>$row['id'],
				'name'=>strip_tags($row['name']),
				'title'=>strip_tags($row['title']),
				'description'=>strip_tags($row['description']),
				'keyword'=>strip_tags($row['tags']),
				'url'=>CONS_BASE_URL.'/'.$row['url'],
				'image'=>CONS_BASE_URL.'/'.$site_image,
				'lang'=>strip_tags($row['lang']),
				'page_number'=>$currentpage,
				'type_menu_id'=>$type_menu['id'],
				'type_menu_name'=>$type_menu['name'],
				'type_menu_img'=>$type_menu['url_img'],
				'type_menu_img_thumb'=>$type_menu['url_img_thumb'],
				'root_id'=>$menu_root_id,
				'root_name'=>$menu_root_name,
				'root_url'=>$menu_root_url,
			);
			return $arr;
		}
	}
	
	public function menu_type($type_id){
		settype($type_id,"int");
		$data = $this->_model->_menu_type($type_id);
		$type_menu = array(
			'id'=>$data['id'],
			'name'=>$data['name'],
			'url_img'=>$data['url_img'],
			'url_img_thumb'=>$data['url_img_thumb']
		);
		return $type_menu;
	}
	
	public function menu_page($current_menu){
		$name_list_model = '_list_'.$current_menu['type_menu_name'];
		$name_list_view = 'view_web_list_'.$current_menu['type_menu_name'];
		$file_view = "view/{$name_list_view}.php";
		if(file_exists($file_view)) include_once($file_view);
	}
	
	public function detail_page($current_menu){
		$alias_detail = $this->_data;
		$name_detail_model = '_detail_'.$current_menu['type_menu_name'];
		$name_detail_view = 'view_web_detail_'.$current_menu['type_menu_name'];
		if($row_detail=$this->_model->$name_detail_model($alias_detail)){
			if($row_detail['url_img']!='') $site_image = $current_menu['type_menu_img'].$row_detail['url_img'];
			else $site_image = CONS_IMAGE_DEFAULT;
			$arr = array(
				'id'=>$row_detail['id'],
				'name'=>strip_tags($row_detail['name']),
				'title'=>strip_tags($row_detail['name']),
				'description'=>strip_tags($row_detail['description']),
				'keyword'=>strip_tags($row_detail['tags']),
				'url'=>$current_menu['url'].$row_detail['name_alias'].'.html',
				'image'=>CONS_BASE_URL.'/'.$site_image,
				'type_menu_name'=>$current_menu['type_menu_name'],
			);
			include_once("view/{$name_detail_view}.php");
			return $arr;
		}
	}
	
	public function ajax(){
		include_once('control_checks_data.php');
		include_once('view/view_web_ajax.php');
	}
	public function error(){
		echo 'Not found';
		//header('location: '.CONS_BASE_URL.CONS_400);
	}
	
	/*payment*/
	public function payment(){
		$PAYEE_ACCOUNT = $this->_model->_change_dau_nhay($_POST['PAYEE_ACCOUNT']);
		$PAYMENT_AMOUNT = $this->_model->_change_dau_nhay($_POST['PAYMENT_AMOUNT']);
		$PAYMENT_UNITS = $this->_model->_change_dau_nhay($_POST['PAYMENT_UNITS']);
		$PAYMENT_ID = $this->_model->_change_dau_nhay($_POST['PAYMENT_ID']);
		$TIMESTAMPGMT = $this->_model->_change_dau_nhay($_POST['TIMESTAMPGMT']);
		$PAYER_ACCOUNT = $this->_model->_change_dau_nhay($_POST['PAYER_ACCOUNT']);
		$name = $this->_model->_change_dau_nhay($_POST['name']);
		$email = $this->_model->_change_dau_nhay($_POST['email']);
		$package_id = $this->_model->_change_dau_nhay($_POST['package_id']);
		
		$ip_address = $this->_model->_change_dau_nhay($_POST['ip_address']);
		$currentIP = $_SERVER['REMOTE_ADDR'];
		if($ip_address==$currentIP){
			$data = $this->_model->_check_ip_payment($ip_address);
			$currentTimeInsert = time() - $data[0]['datetime'];
			if($currentTimeInsert < 30){
				echo CONS_MESSAGE_LOCK_SIGNUP;
				return false;
			}elseif($data[0]['PAYMENT_ID']==$PAYMENT_ID){
				echo 'Đã đăng ký';
				return false;
			}
		}else{
			echo 'Error';
			return false;
		}
		
		$tolen='';
		$tolen_key = array_keys($_REQUEST);
		$tolen_value = array_values($_REQUEST);
		for($i=0; $i<count($tolen_key); $i++){
			$tolen .= '['.$tolen_key[$i].'] => '.$tolen_value[$i].'<br />';
		}
		
		if($this->_data=='success') $status=1;
		elseif($this->_data=='error') $status=0;
		else{
			echo 'Not found';
			return false;
		}
		
		$this->_model->_insert_payment($name, $email, $package_id, $ip_address, $PAYEE_ACCOUNT, $PAYMENT_AMOUNT, $PAYMENT_UNITS, $PAYMENT_ID, $TIMESTAMPGMT, $PAYER_ACCOUNT, $tolen, $status);
	}
	/*end payment*/
	
	/*user*/
	public function user_login($email, $pass, $ip_address){
		$currentDatetime = time();
		if($email!='' && $pass!=''){
			$check_ip = $this->_model->_check_lock_ip($ip_address);
			$login_number = $check_ip[0]['login_number'];
			$disable_date = $check_ip[0]['disable_date'];
			settype($login_number, 'int');
			if($disable_date<$currentDatetime){
				$data = $this->_model->_check_user_login($email, $pass);
				if(count($data)==1){
					$_SESSION['user_id']=$data[0]['id'];
					$_SESSION['user_name']=$data[0]['name'];
					$_SESSION['user_email']=$data[0]['email'];
					$_SESSION['user_group_id']=$data[0]['group_id'];
					if($login_number!=0){
						$login_number=1;
						$this->_model->_lock_ip($ip_address, $login_number, $currentDatetime);
					}
					return true;
				}else{
					if($login_number>=CONS_NUMBER_LOGIN) $login_number=5;
					$this->_model->_lock_ip($ip_address, $login_number, $currentDatetime);
					return CONS_MESSAGE_USER_PASS_ERROR;
				}
			}else{
				return CONS_MESSAGE_LOCK_IP;
			}
		}else{
			return 'Error';
		}
	}
	public function user_change_infomation(){
		$id = $_SESSION['user_id'];
		$email = $_SESSION['user_email'];
		$phone = $this->_model->_checks_phone($_POST['phone']);
		if($phone==false) $phone='';
		
		if($_POST['month']!='' && $_POST['day']!='' && $_POST['year']!=''){
			if($_POST['month']>0 && $_POST['month']<=12) $month=$_POST['month']; else return false;
			if($_POST['day']>0 && $_POST['day']<=31) $day=$_POST['day']; else return false;
			if($_POST['year']>1900 && $_POST['year']<date('Y')) $year=$_POST['year']; else return false;
			$birthday = $year.'-'.$month.'-'.$day;//"{$year}-{$month}-{$day}";
			$birthday = strtotime($birthday);
		}else $birthday=0;
		
		if($_POST['gender']==0 || $_POST['gender']==1) $gender=$_POST['gender']; else $gender=2;
		$address = $this->_model->_change_dau_nhay($_POST['address']);
		
		$this->_model->_update_user_infomation($id, $email, $phone, $birthday, $gender, $address);
		return true;
	}
	public function user_change_passowrd(){
		$id = $_SESSION['user_id'];
		$email = $_SESSION['user_email'];
		$oldPass = $this->_model->_change_dau_nhay($_POST['oldPass']);
		$newPass = $this->_model->_change_dau_nhay($_POST['newPass']);
		if($oldPass!='' && $newPass!=''){
			$data = $this->_model->_check_user_login($email, $oldPass);
			if(count($data)==1){
				$this->_model->_update_user_password($id, $email, $newPass);
				return true;
			}else return 'Incorrect password';
		}else return 'Error';
	}
	public function logout_user(){
		session_unset('user_id');
		session_unset('user_name');
		session_unset('user_email');
		session_unset('user_group_id');
		header('location: '.CONS_BASE_URL.'/login/');
	}
	/*end user*/
	
	public function index(){
		$include = ob_start();
		if( $this->_control==CONS_DEFAULT_WEB_CONTROLLER || isset($_GET['lang']) ){
			$this->_lang = $this->language();
			$this->_config = $this->web_config($this->_lang);
			$current_menu = $current_site = $this->home_page();
		}else{
			$current_menu = $this->current_menu();
			$this->_config = $this->web_config($current_menu['lang']);
			if($current_menu==true){
				if($this->_action == CONS_WEB_VIEW_MENU){
					$current_site = $current_menu;
					$this->menu_page($current_menu);
				}elseif($this->_action == CONS_WEB_VIEW_DETAIL){
					$current_site = $this->detail_page($current_menu);
				}//end danh muc hoac chi tiet
			}else if($this->_control==CONS_AJAX_NAME){
				$this->_lang = $this->language();
				$this->_config = $this->web_config($this->_lang);
				$this->ajax();
				return true;
			}else{
				$this->error();
				return true;
			}//end menu page and detail page
		}
		$include = ob_get_clean();
		
		if($current_menu['page_number']>1) $title_page=' - Page '.$current_menu['page_number'];
		else $title_page='';
		$tag_head = $this->tag_head($this->_config['sitename'],$current_site['title'].$title_page,$current_site['description'].$title_page,$current_site['keyword'],$current_site['url'],$current_site['image'],$current_site['type_menu_name']);//end tab head
		include_once('view/view_web.php');
	}//index
	
	public function checks_video_youtube_vimeo($url_video,$domain=NULL){
		if(is_numeric($url_video)){
			$str = '<iframe src="//player.vimeo.com/video/'.$url_video.'" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
		}else{
			$str = '<iframe src="http://www.youtube.com/embed/'.$url_video.'?origin=http://'.$domain.'&amp;rel=0" frameborder="0"></iframe>';
		}
		return $str;
	}

}//class