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
		$file_lang = "languages/lang_{$lang}.php";
		if (file_exists($file_lang)) include_once($file_lang);
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