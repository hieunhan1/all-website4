<?php
class home extends controlGerenal{
	public $_lang;
	public $_urlImg;
	//public $_home;
	public function __construct(){
		parent::__construct();
		//$this->_home = new modelHome;
		$this->language();
	}
	
	public function language(){
		if(!isset($_GET['lang']))
			$this->_lang = CONS_DEFAULT_LANG;
		else
			$this->_lang = $_GET['lang'];
		return true;
	}
	
	public function webMenuType($id){
		$data = $this->_model->_listWebMenuType();
		$this->_urlImg = $data;
		return $data[$id];
	}
	
	public function currentMenu(){
		$typeId = 1; //type trang chủ là 1
		$row = $this->_model->_selectMenuType($typeId, $this->_lang);
		$typeMenu = $this->webMenuType($typeId);
		if($row['img']=='')
			$img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
		else
			$img = CONS_BASE_URL.'/'.$typeMenu['url_img'].$row['img'];
		
		$arr = array(
			'id'=>$row['id'],
			'name'=>strip_tags($row['name']),
			'title'=>strip_tags($row['title']),
			'description'=>strip_tags($row['description']),
			'tags'=>strip_tags($row['tags']),
			'url'=>$row['url'],
			'img'=>$img,
			'lang'=>strip_tags($row['lang']),
			'typeMenuId'=>$typeMenu['id'],
			'typeMenuName'=>$typeMenu['name'],
			'typeMenuImg'=>$typeMenu['url_img'],
			'typeMenuImgThumb'=>$typeMenu['url_img_thumb'],
			'rootId'=>$row['id'],
			'tab_id'=>$row['tab_id'],
		);
		return $arr;
	}
}

$c = new home;
$lang = $c->_lang;
$config = $c->config($lang);
$currentMenu = $c->currentMenu();
$tagHead = $c->tagHead($currentMenu['title'], $currentMenu['description'], $currentMenu['tags'], $currentMenu['img'], $currentMenu['url']);

$urlImg = $c->_urlImg;

$viewData = ob_start();
include_once('view/web_home.php');
$viewData = ob_get_clean();

include_once('view/web.php');