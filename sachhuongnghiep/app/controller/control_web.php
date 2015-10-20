<?php
class control_web{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
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
				'tel'=>$row['tel'],
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
		$lang = $this->language();
		$include = ob_start();
		if( $this->_control==CONS_DEFAULT_WEB_CONTROLLER || isset($_GET['lang']) ){
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
	
	/*order*/
	public function order_sp(){
		$alias = trim($_POST['order_sp']);
		$soluong = trim($_POST['soluong']);
		if($alias=='' || !is_numeric($soluong)) return false;
		$row = $this->_model->_detail_product($alias);
		if(count($row) > 1){
			$id = $row['id'];
			$_SESSION['list_order_sp_name'][$id] = $row['name'];
			$_SESSION['list_order_sp_price_cost'][$id] = $row['price_cost'];
			$_SESSION['list_order_sp_price'][$id] = $row['price'];
			$_SESSION['list_order_sp_url'][$id] = $row['url'];
			$_SESSION['list_order_sp_soluong'][$id] = $soluong;
			
			//echo $this->order_sp_thanhtoan_link();
			return true;
		}else echo '0';
	}
	public function order_sp_view(){
		$data = array();
		$all_sp = count($_SESSION['list_order_sp_name']);
		if(isset($_SESSION['list_order_sp_soluong'])) $_SESSION['list_order_sp_soluong'] = array_filter($_SESSION['list_order_sp_soluong'], 'strlen');
		if ($all_sp>0){
			reset($_SESSION['list_order_sp_name']);
			reset($_SESSION['list_order_sp_price_cost']);
			reset($_SESSION['list_order_sp_price']);
			reset($_SESSION['list_order_sp_soluong']);
			reset($_SESSION['list_order_sp_url']);
			$total_current=0; $total_number=0;
			for ($i=0; $i<$all_sp; $i++) {
				$idSP = key($_SESSION['list_order_sp_name']);
				$name = current($_SESSION['list_order_sp_name']);
				$price_cost = current($_SESSION['list_order_sp_price_cost']);
				$price = current($_SESSION['list_order_sp_price']);
				$soluong = current($_SESSION['list_order_sp_soluong']);
				$link = current($_SESSION['list_order_sp_url']);
				$total = $price*$soluong;
				$total_current += $total;
				$total_number += $soluong;
				$data[] = array('id'=>$idSP,'name'=>$name,'price'=>$price,'price_cost'=>$price_cost,'soluong'=>$soluong,'link'=>$link,'total'=>$total);
				next($_SESSION['list_order_sp_name']);
				next($_SESSION['list_order_sp_price_cost']);
				next($_SESSION['list_order_sp_price']);
				next($_SESSION['list_order_sp_soluong']);
				next($_SESSION['list_order_sp_url']);
			}
		}else $data[] = array('name'=>'Bạn chưa đặt mua sản phẩm.');
		return $data;
	}
	public function order_sp_trash($id){
		unset($_SESSION['list_order_sp_name'][$id]);
		unset($_SESSION['list_order_sp_price_cost'][$id]);
		unset($_SESSION['list_order_sp_price'][$id]);
		unset($_SESSION['list_order_sp_soluong'][$id]);
		unset($_SESSION['list_order_sp_url'][$id]);
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
		return '<div class="product_detail_btn bogoc_10px" style="background-color:#999"><a href="gio-hang/">Tiến hành đặt hàng</a></div>';
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