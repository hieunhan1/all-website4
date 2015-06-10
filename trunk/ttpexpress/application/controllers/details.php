<?php
class details extends controlPages{
	public $_alias;
	public function __construct($alias){
		parent::__construct();
		$this->_alias=$alias;
	}
	
	public function currentMenu(){
		$row = $this->_model->_menuIdOrAlias($this->_alias);
		if(count($row)==1) return false;
		
		$typeId = $row['type_id'];
		$typeMenu = $this->webMenuType($typeId);
		
		if($row['img']=='') $img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
		else $img = CONS_BASE_URL.'/'.$typeMenu['url_img'].$row['img'];
		
		$regex='/(http:|https:)*(.*)$/';
		if(!preg_match($regex, $row['url'])) $url=CONS_BASE_URL.$row['url'];
		else $url=$row['url'];
		
		if($row['parent']==0) $root[]=array('id'=>$row['id'], 'name'=>$row['name'], 'url'=>$row['url']);
		else{
			$root=$this->_model->_menuRoot($row['parent']);
		}
		
		$arr = array(
			'id'=>$row['id'],
			'name'=>strip_tags($row['name']),
			'title'=>strip_tags($row['title']),
			'description'=>strip_tags($row['description']),
			'tags'=>strip_tags($row['tags']),
			'url'=>$url,
			'img'=>$img,
			'lang'=>strip_tags($row['lang']),
			'typeMenuId'=>$typeMenu['id'],
			'typeMenuName'=>$typeMenu['name'],
			'typeMenuImg'=>$typeMenu['url_img'],
			'typeMenuImgThumb'=>$typeMenu['url_img_thumb'],
			'tableData'=>$typeMenu['table_data'],
			'rootId'=>$root[0]['id'],
			'rootName'=>$root[0]['name'],
			'rootUrl'=>$root[0]['url'],
		);
		return $arr;
	}
}

$aliasMenu = $arrUrl[0];
$aliasDetail = str_replace('.html', '', $arrUrl[1]);

$c = new details($aliasMenu);
$currentMenu = $c->currentMenu();
if($currentMenu['id']==''){
	$error = ERROR_NOT_FOUND_PAGE;
	include_once('view/web_error.php');
	return false;
}

$lang = $currentMenu['lang'];
$config = $c->config($lang);

$table = $currentMenu['tableData'];
$urlImg = $c->_model->_listWebMenuType();

/*view*/
$controlType = 'control'.$currentMenu['typeMenuName'];
$cD = new $controlType($aliasDetail);

$rowDetail = $cD->_model->_viewDetail($aliasDetail);
if($rowDetail['id']==''){
	$error = ERROR_NOT_FOUND_PAGE;
	include_once('view/web_error.php');
	return false;
}

if($rowDetail['img']!='') $img = CONS_BASE_URL.'/'.$currentMenu['typeMenuImg'].$rowDetail['img'];
else $img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
$tagHead = $c->tagHead($rowDetail['name'], $rowDetail['description'], $rowDetail['tags'], $img, CONS_BASE_URL.'/'.$rowDetail['url']);

$viewData = ob_start();
if(file_exists("view/{$table}_detail.php")) include_once("view/{$table}_detail.php");
else echo ERROR_NOT_FOUND_FILE;
$viewData = ob_get_clean();
/*end view*/

include_once('view/web.php');