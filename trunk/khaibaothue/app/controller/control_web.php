<?php
class control_web{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
	public function __construct($control,$action,$data){
		$this->_model	= new model_web;
		$this->_control	= $control;
		$this->_action	= $action;
		$this->_data	= $data;
	}//construct
	
	public function type_menu($type_id, &$base_img_detail){
		settype($type_id,"int");
		switch($type_id){
			case 1 : $type_name = 'site';		break;
			case 2 : $type_name = 'article';	$base_img_detail = CONS_IMAGES_ARTICLES; break;
			//case 3 : $type_name = 'product';	$base_img_detail = CONS_IMAGES_PRODUCTS; break;
			case 4 : $type_name = 'service';	$base_img_detail = CONS_IMAGES_SERVICES; break;
			//case 5 : $type_name = 'photo';		$base_img_detail = CONS_IMAGES_PHOTOS; break;
			//case 6 : $type_name = 'video';		$base_img_detail = CONS_IMAGES_VIDEOS; break;
			//case 8 : $type_name = 'payment';	break;
			//case 12 : $type_name = 'register';	break;
			case 13 : $type_name = 'contact';	break;
			default : $type_name = 'site';
		}
		return $type_name;
	}
	
	public function tab_head($site_name,$site_title,$site_des,$site_key,$site_url,$site_image,$type_name){
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
		<link type="icon/x-icon" href="css/web_img/logo_icon.ico" rel="shortcut icon" />';
		return $str;
	}
	
	public function home_page($lang, &$site_title, &$site_des, &$site_key, &$site_url, &$site_image, &$type_name){
		$row = $this->_model->_web_menu_type(1); /*type_home*/
		$site_title	= $row['title'];
		$site_des	= $row['metaDescription'];
		$site_key	= $row['metaKeyword'];
		$site_url	= CONS_BASE_URL;
		if($row['url_hinh']=='') $site_image = CONS_IMAGE_DEFAULT; else $site_image = CONS_IMAGES_CATALOG.$row['url_hinh'];
		$type_name	= 'site';
		$idMenu = $row['id'];
		
		$row = $this->_model->_web_menu_type(4); /*type_service*/
		$id_menu_service = $row['id'];
		
		$row = $this->_model->_web_menu_type(2,1); /*info_home*/
		$id_menu_info = $row['id'];
		
		include_once('view/view_web_home.php');
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
		$arr = $this->navigator($row['parent_id'], $lang, $arr);
		return $arr;
	}
	
	public function web_config($lang){
		$file_lang = "languages/lang_{$lang}.php";
		if (file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_web_config($lang);
	}
	
	public function index(){
		if(!isset($_GET['lang'])) $lang = 'vi'; else $lang = $_GET['lang'];
		
		$include = ob_start();
		if( $this->_control==CONS_DEFAULT_WEB_CONTROLLER || isset($_GET['lang']) ){
			/*web config*/
			$row_config = $this->web_config($lang);
			$site_name = $row_config['name'];
			
			$this->home_page($lang, $site_title, $site_des, $site_key, $site_url, $site_image, $type_name); /*trang chủ*/
		}else{
			$alias_menu = $this->_control;
			if($row_menu_one=$this->_model->_web_menu_one($alias_menu)){
				$lang = $row_menu_one['lang'];
				$idMenu = $row_menu_one['id'];
				$menu_root_id = $this->_model->_web_menu_root($row_menu_one['parent_id'], $idMenu, $menu_root_name, $menu_root_url);
				
				/*kiểm tra loại danh mục*/
				$type_id = $row_menu_one['type_id'];
				$type_name = $this->type_menu($type_id, $base_img_detail);
				$name_model_list = '_list_'.$type_name;
				$name_model_detail = '_detail_'.$type_name;
				$name_view_list = 'view_web_list_'.$type_name;
				$name_view_detail = 'view_web_detail_'.$type_name;
				/*end kiểm tra loại danh mục*/
				
				/*web config*/
				$row_config = $this->web_config($lang);
				$site_name = $row_config['name'];
			}else if($alias_menu==CONS_AJAX_NAME){
				/*web config*/
				$row_config = $this->web_config($lang);
				
				include_once('view/view_web_ajax.php');
				return true;
			}else{
				header('location: '.CONS_BASE_URL.CONS_400);
				return false;
			}
			
			/*danh mục hoặc chi tiết*/
			if($this->_action == CONS_WEB_VIEW_MENU){
				$currentpage = $this->_data;
				if($currentpage!=1) $title_page=" - Page {$currentpage}";
				
				$site_title	= strip_tags($row_menu_one['title']).$title_page;
				$site_des	= strip_tags($row_menu_one['metaDescription']).$title_page;
				$site_key	= strip_tags($row_menu_one['metaKeyword']);
				$site_url	= CONS_BASE_URL.'/'.$row_menu_one['url'];
				if($row_menu_one['url_hinh']=='') $site_image = CONS_IMAGE_DEFAULT; else $site_image = CONS_IMAGES_CATALOG.$row_menu_one['url_hinh'];
				
				$file_view_list = "view/{$name_view_list}.php";
				if(file_exists($file_view_list)) include_once($file_view_list);
				else{
					include_once("control_checks_data.php"); /*cac ham kiem tra du lieu*/
					include_once("view/view_web_ajax.php");
					return true;
				}
			}elseif($this->_action == CONS_WEB_VIEW_DETAIL){
				$alias_detail = $this->_data;
				if($row_detail=$this->_model->$name_model_detail($alias_detail)){
					$site_title	= strip_tags($row_detail['name']);
					$site_des	= strip_tags($row_detail['metaDescription']);
					$site_key	= strip_tags($row_detail['metaKeyword']);
					$site_url	= CONS_BASE_URL.'/'.$row_menu_one['url'].$row_detail['name_alias'].'.html';
					if($row_detail['url_hinh']!='') $site_image = $base_img_detail.$row_detail['url_hinh'];
					else $site_image = CONS_IMAGE_DEFAULT;
					
					include_once("view/{$name_view_detail}.php");
				}else{
					header('location: '.CONS_BASE_URL.CONS_400);
					return false;
				}
			}/*end danh mục hoặc chi tiết*/
		}
		$include = ob_get_clean();
		
		/*tab head*/
		$tab_head = $this->tab_head($site_name,$site_title,$site_des,$site_key,$site_url,$site_image,$type_name);
		include_once('view/view_web.php');
	}//index
	
	
	/*order*/
	public function order_sp(){
		$alias = trim($_POST['order_sp']);
		$soluong = trim($_POST['soluong']);
		if($alias=='' || !is_numeric($soluong)) return false;
		$row = $this->_model->_detail_product($alias);
		if(count($row) > 1){
			$id = $row['id'];
			$_SESSION['list_order_sp_name'][$id] = $row['name'];
			$_SESSION['list_order_sp_giagoc'][$id] = $row['giagoc'];
			$_SESSION['list_order_sp_giaban'][$id] = $row['giaban'];
			$_SESSION['list_order_sp_soluong'][$id] += $soluong;
			$_SESSION['list_order_sp_link'][$id] = $row['url'];
			echo $this->order_sp_thanhtoan_link();
			return true;
		}else echo '0';
	}
	public function order_sp_view(){
		$data = array();
		$all_sp = count($_SESSION['list_order_sp_name']);
		if ($all_sp>0){
			reset($_SESSION['list_order_sp_name']);
			reset($_SESSION['list_order_sp_giagoc']);
			reset($_SESSION['list_order_sp_giaban']);
			reset($_SESSION['list_order_sp_soluong']);
			reset($_SESSION['list_order_sp_link']);
			$tongtien=0; $tongsoluong=0;
			for ($i=0; $i<$all_sp; $i++) {
				$idSP = key($_SESSION['list_order_sp_name']);
				$name = current($_SESSION['list_order_sp_name']);
				$giagoc = current($_SESSION['list_order_sp_giagoc']);
				$giaban = current($_SESSION['list_order_sp_giaban']);
				$soluong = current($_SESSION['list_order_sp_soluong']);
				$link = current($_SESSION['list_order_sp_link']);
				$thanhtien = $giaban*$soluong;
				$tongtien += $thanhtien;
				$tongsoluong += $soluong;
				$data[] = array('id'=>$idSP,'name'=>$name,'giaban'=>$giaban,'giagoc'=>$giagoc,'soluong'=>$soluong,'link'=>$link,'thanhtien'=>$thanhtien);
				next($_SESSION['list_order_sp_name']);
				next($_SESSION['list_order_sp_giagoc']);
				next($_SESSION['list_order_sp_giaban']);
				next($_SESSION['list_order_sp_soluong']);
				next($_SESSION['list_order_sp_link']);
			}
		}else $data[] = array('name'=>'Bạn chưa đặt mua sản phẩm.');
		return $data;
	}
	public function order_sp_trash(){
		$id = $_POST["id"];
		unset($_SESSION['list_order_sp_name'][$id]);
		unset($_SESSION['list_order_sp_giagoc'][$id]);
		unset($_SESSION['list_order_sp_giaban'][$id]);
		unset($_SESSION['list_order_sp_soluong'][$id]);
	}
	public function order_sp_edit_sl(){
		$id = $_POST["id"];
		$soluong = $_POST["soluong"];
		$_SESSION['list_order_sp_soluong'][$id] = $soluong;
	}
	public function order_sp_cancel(){
		session_destroy();
	}
	public function order_sp_thanhtoan_link(){
		return '<div class="product_detail_btn" style="background-color:#999"><a href="gio-hang/">Tiến hành đặt hàng</a></div>';
	}
	/*end order*/
	
	public function checks_video_youtube_vimeo($url_video,$domain=NULL){
		if(is_numeric($url_video)){
			$str = '<iframe src="//player.vimeo.com/video/'.$url_video.'" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>';
		}else{
			$str = '<iframe src="http://www.youtube.com/embed/'.$url_video.'?origin=http://'.$domain.'&amp;rel=0" frameborder="0"></iframe>';
		}
		return $str;
	}

}//class