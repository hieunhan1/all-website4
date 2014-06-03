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
	
	public function home_page(&$site_title, &$site_des, &$site_key, &$site_url, &$site_image, &$type_name){
		$row = $this->_model->_web_menu_type(1);
		
		$site_title	= $row['title'];
		$site_des	= $row['metaDescription'];
		$site_key	= $row['metaKeyword'];
		$site_url	= CONS_BASE_URL;
		if($row['url_hinh']=='') $site_image = CONS_IMAGE_DEFAULT; else $site_image = CONS_IMAGES_CATALOG.$row['url_hinh'];
		$type_name	= 'site';
		echo 'trang chủ - ';
	}
	
	public function list_page(&$site_title, &$site_des, &$site_key, &$site_url, &$site_image){
		
	}
	
	public function index(){
		if(!isset($_GET['lang'])) $lang = 'vi'; else $lang = $_GET['lang'];
		
		$include = ob_start();
		if( $this->_control==CONS_DEFAULT_WEB_CONTROLLER || isset($_GET['lang']) ){
			$this->home_page($site_title,$site_des,$site_key,$site_url,$site_image,$type_name); /*trang chủ*/
		}else{
			$alias_menu = $this->_control;
			if( !$row_menu_one=$this->_model->_web_menu_one($alias_menu) ) echo 'Không có danh mục bạn tìm';
			
			$lang = $row_menu_one['lang'];
			
			$type_id = $row_menu_one['type_id'];
			$type_name = $this->type_menu($type_id);
			
			$idMenu = $row_menu_one['id'];
			$menu_root_id = $this->_model->_web_menu_root($row_menu_one['parent_id'], $idMenu, $menu_root_name, $menu_root_url);
			
			if($this->_action == CONS_WEB_VIEW_MENU){
				$page = $this->_data;
				
				$site_title	= $row_menu_one['title'];
				$site_des	= $row_menu_one['metaDescription'];
				$site_key	= $row_menu_one['metaKeyword'];
				$site_url	= CONS_BASE_URL.'/'.$row_menu_one['url'];
				if($row_menu_one['url_hinh']=='') $site_image = CONS_IMAGE_DEFAULT; else $site_image = CONS_IMAGES_CATALOG.$row_menu_one['url_hinh'];
				echo 'danh muc';
			}elseif($this->_action == CONS_WEB_VIEW_DETAIL){
				$alias_detail = $this->_data;
				
				$site_title	= $row_menu_one['title'];
				$site_des	= $row_menu_one['metaDescription'];
				$site_key	= $row_menu_one['metaKeyword'];
				$site_url	= CONS_BASE_URL.'/'.$row_menu_one['url'];
				if($row_menu_one['url_hinh']=='') $site_image = CONS_IMAGE_DEFAULT; else $site_image = CONS_IMAGES_CATALOG.$row_menu_one['url_hinh'];
				echo 'chi tiet';
			}
		}
		$include = ob_get_clean();
		
		/*web config*/
		$row_config = $this->_model->_web_config($lang);
		$site_name = $row_config['name'];
		
		
		
		$seo_head = $this->seo_head($site_name,$site_title,$site_des,$site_key,$site_url,$site_image,$type_name);
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
	
	public function type_menu($type_id){
		settype($type_id,"int");
		switch($type_id){
			case 1 : $type_name = 'site';		break;
			case 2 : $type_name = 'article';	break;
			case 3 : $type_name = 'product';	break;
			case 4 : $type_name = 'service';	break;
			case 5 : $type_name = 'image';		break;
			case 6 : $type_name = 'video';		break;
			case 12 : $type_name = 'register';	break;
			case 13 : $type_name = 'contact';	break;
			default : $type_name = 'site';
		}
		return $type_name;
	}
	
	public function seo_head($site_name,$site_title,$site_des,$site_key,$site_url,$site_image,$type_name){
		$str = '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>'.$site_title.'</title>
		<meta name="description" content="'.$site_des.'" />
		<meta name="keywords" content="'.$site_key.'" />
		<meta name="robots" content="INDEX,FOLLOW"/>
		<meta property="og:title" content="'.$site_title.'" />
		<meta property="og:description" content="'.$site_description.'" />
		<meta property="og:url" content="'.$site_url.'" />
		<meta property="og:image" content="'.$site_image.'" />
		<meta property="og:site_name" content="'.$site_name.'" />
		<meta property="og:type" content="'.$type_name.'" />
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link type="icon/x-icon" href="css/web_img/logo_icon.ico" rel="shortcut icon" />';
		return $str;
	}
	
}//class