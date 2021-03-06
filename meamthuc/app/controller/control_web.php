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
	
	public function tag_head($site_name,$site_title,$site_des,$site_key,$site_url,$site_image,$type_name){
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
		$file_lang = "languages/lang_{$lang}.php";
		if (file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_web_config($lang);
	}
	
	public function language(){
		if(!isset($_GET['lang'])) return 'vi'; else return $_GET['lang'];
	}
	
	public function menu_type($type_id){
		settype($type_id,"int");
		$data = $this->_model->_list_menu_type();
		foreach($data as $row){
			if($type_id==$row['id']){
				$type_menu = array('name'=>$row['name'], 'url_img'=>$row['url_img']);
				return $type_menu;
			}else $type_menu = array('name'=>'site', 'url_img'=>'');
		}
		return $type_menu;
	}
	
	public function current_menu(&$lang, &$idMenu){
		$alias_menu = $this->_control;
		if($row=$this->_model->_web_menu_one($alias_menu)){
			$lang	= $row['lang'];
			$idMenu = $row['id'];
			if($row['url_img']=='') $site_image = CONS_IMAGE_DEFAULT;
			else $site_image = CONS_IMAGES_CATALOG.$row['url_img'];
			$type_id= $row['type_id'];
			$type_menu = $this->menu_type($type_id);
			
			$menu_root_id = $this->_model->_web_menu_root($row['parent'], $idMenu, $root_name, $root_url);
			$arr = array(
				'id'=>$row['id'],
				'name'=>strip_tags($row['name']),
				'title'=>strip_tags($row['title']),
				'description'=>strip_tags($row['description']),
				'keyword'=>strip_tags($row['tags']),
				'url'=>CONS_BASE_URL.'/'.$row['url'],
				'image'=>CONS_BASE_URL.'/'.$site_image,
				'type_id'=>$type_id,
				'type_name'=>$type_menu['name'],
				'type_img'=>$type_menu['url_img'],
				'root_id'=>$menu_root_id,
				'root_name'=>$root_name,
				'root_url'=>$root_url,
			);
			return $arr;
		}
	}
	
	public function home_page($lang, &$idMenu){
		$row = $this->_model->_web_menu_type(1, $lang);
		if($row['url_img']=='') $site_image = CONS_IMAGE_DEFAULT;
		else $site_image = CONS_IMAGES_CATALOG.$row['url_img'];
		$arr = array(
			'id'=>$row['id'],
			'name'=>strip_tags($row['name']),
			'title'=>strip_tags($row['title']),
			'description'=>strip_tags($row['description']),
			'keyword'=>strip_tags($row['tags']),
			'url'=>CONS_BASE_URL.'/'.$row['url'],
			'image'=>CONS_BASE_URL.'/'.$site_image,
			'type_name'=>'site',
		);
		$idMenu = $row['id'];
		include_once('view/view_web_home.php');
		return $arr;
	}
	
	public function menu_page($lang, $current_menu){
		$currentpage = $this->_data;
		if($currentpage!=1) $title_page=" - Page {$currentpage}";
		$idMenu = $current_menu['id'];
		$name_list_model = '_list_'.$current_menu['type_name'];
		$name_list_view = 'view_web_list_'.$current_menu['type_name'];
		$file_view = "view/{$name_list_view}.php";
		if(file_exists($file_view)) include_once($file_view);
	}
	
	public function detail_page($lang, $current_menu){
		$alias_detail = $this->_data;
		$idMenu = $current_menu['id'];
		$name_detail_model = '_detail_'.$current_menu['type_name'];
		$name_detail_view = 'view_web_detail_'.$current_menu['type_name'];
		if($row_detail=$this->_model->$name_detail_model($alias_detail)){
			if($row_detail['url_img']!='') $site_image = $current_menu['type_img'].$row_detail['url_img'];
			else $site_image = CONS_IMAGE_DEFAULT;
			$arr = array(
				'id'=>$row_detail['id'],
				'name'=>strip_tags($row_detail['name']),
				'title'=>strip_tags($row_detail['name']),
				'description'=>strip_tags($row_detail['description']),
				'keyword'=>strip_tags($row_detail['tags']),
				'url'=>$current_menu['url'].$row_detail['name_alias'].'.html',
				'image'=>CONS_BASE_URL.'/'.$site_image,
				'type_name'=>$current_menu['type_name'],
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
		echo 'Không tìm thấy';
		//header('location: '.CONS_BASE_URL.CONS_400);
	}
	
	public function index(){
		$lang = 'vi';
		$include = ob_start();
		if( $this->_control==CONS_DEFAULT_WEB_CONTROLLER ){
			$this->_config = $this->web_config($lang);
			$current_site = $this->home_page($lang, $idMenu);
		}else{
			$current_menu = $this->current_menu($lang, $idMenu, $menu_root);
			$this->_config = $this->web_config($lang);
			if($current_menu==true){
				if($this->_action == CONS_WEB_VIEW_MENU){
					$current_site = $current_menu;
					$this->menu_page($lang, $current_menu);
				}elseif($this->_action == CONS_WEB_VIEW_DETAIL){
					$current_site = $this->detail_page($lang, $current_menu);
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
		$tag_head = $this->tag_head($this->_config['site_name'],$current_site['title'],$current_site['description'],$current_site['keyword'],$current_site['url'],$current_site['image'],$current_site['type_name']);//end tab head
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
	
	//home
	public function home_box_service($idMenu, $nameMenu){
		$i = 0;
		$str = '<div class="title_home"><span>'.$nameMenu.'</span></div><div class="home_box_service">';
		$data = $this->_model->_home_list_item($idMenu);
		foreach($data as $row){
			$i++;
			if($i%3!=1) $style='style="margin-left:25px"'; else $style='';
			$str .= '<div class="home_box_service_item" '.$style.'>
			<div class="home_box_service_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_ARTICLES_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
			<p>'.$row['description'].'</p></div>';
		}
		$str .= '</div>';
		return $str;
	}
	public function home_box_daotao($idMenu, $nameMenu){
		$i = 0;
		$str = '<div class="home_box_daotao"><h2>Đào tạo ẩm thực</h2><div class="home_box_daotao">';
		$data = $this->_model->_home_list_item($idMenu, 10);
		foreach($data as $row){
			$i++;
			if($i%2==1) $style='style="float:left"'; else $style='style="float:right"';
			$str .= '<div class="home_box_daotao_item" '.$style.'>
            <a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
            <p>'.$row['description'].'</p></div>';
		}
		$str .= '<div class="clear_1px"></div></div></div>';
		return $str;
	}
	public function home_box_daubep($idMenu, $nameMenu){
		$i = 0;
		$str = '<div class="title_home"><span>'.$nameMenu.'</span></div><div class="home_box_list">';
		$data = $this->_model->_home_list_daubep($idMenu);
		foreach($data as $row){
			$i++;
			if($i%4!=1) $style='style="margin-left:22px"'; else $style='';
			$str .= '<div class="home_box_list_item" '.$style.'>
				<div class="home_box_list_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_CHEFS_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
				<p>'.$row['working'].'</p>
			</div>';
		}
		$str .= '<div class="clear_1px"></div></div>';
		return $str;
	}
	public function home_box_monan($idMenu, $nameMenu){
		$i = 0;
		$str = '<div class="title_home"><span>'.$nameMenu.'</span></div><div class="home_box_list">';
		$data = $this->_model->_home_list_monan($idMenu);
		foreach($data as $row){
			$i++;
			if($i%4!=1) $style='style="margin-left:22px"'; else $style='';
			$str .= '<div class="home_box_list_item" '.$style.'>
				<div class="home_box_list_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_MONAN_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 style="height:22px">'.$row['name'].'</h3></a>
				<p>Đầu bếp: '.$row['daubep_id'].'</p>
			</div>';
		}
		$str .= '<div class="clear_1px"></div></div>';
		return $str;
	}
	public function home_box_nghethuat_amthuc($idMenu, $nameMenu){
		$i = 0;
		$str = '<div class="title_home"><span>'.$nameMenu.'</span></div><div class="home_box_list">';
		$data = $this->_model->_home_list_item($idMenu, 4);
		foreach($data as $row){
			$i++;
			if($i%4!=1) $style='style="margin-left:22px"'; else $style='';
			$str .= '<div class="home_box_list_item" '.$style.'>
				<div class="home_box_list_img" style="height:125px"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_ARTICLES_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 style="height:44px">'.$row['name'].'</h3></a>
				<p>'.$row['description'].'</p>
			</div>';
		}
		$str .= '<div style="clear:both; height:20px"></div></div>';
		return $str;
	}
	//end home
}//class