<?php
class details extends controlGerenal{
	public $_alias;
	public function __construct($alias){
		parent::__construct();
		$this->_alias=$alias;
	}
	
	public function webMenuType($id){
		$data = $this->_model->_listWebMenuType();
		$this->_urlImg = $data;
		return $data[$id];
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
			'tab_id'=>$row['tab_id'],
		);
		return $arr;
	}
}

//print_r($arrUrl);
$aliasMenu = $arrUrl['alias'];
$aliasDetail = $arrUrl['detail'];

$c = new details($aliasMenu);
$currentMenu = $c->currentMenu();
if($currentMenu['id']==''){
	$error = ERROR_NOT_FOUND_PAGE;
	include_once('view/web_error.php');
	return false;
}

$lang = $currentMenu['lang'];
$config = $c->config($lang);

$urlImg = $c->_urlImg;

$table = $currentMenu['tableData'];
$fileInclude = "web_{$currentMenu['typeMenuName']}_detail.php";

/*view*/
$rowDetail = $c->_model->_viewDetail($table, $aliasDetail);
if($rowDetail['id']==''){
	$error = ERROR_NOT_FOUND_PAGE;
	include_once('view/web_error.php');
	return false;
}

if($rowDetail['img']!='') $img = CONS_BASE_URL.'/'.$currentMenu['typeMenuImg'].$rowDetail['img'];
else $img = CONS_BASE_URL.'/'.CONS_IMAGE_DEFAULT;
$tagHead = $c->tagHead($rowDetail['name'], $rowDetail['description'], $rowDetail['tags'], $img, CONS_BASE_URL.'/'.$rowDetail['url']);

$controlType = 'control'.ucfirst($currentMenu['typeMenuName']);
$cD = new $controlType($aliasDetail);

$viewData = ob_start();
if(file_exists("view/{$fileInclude}")) include_once("view/{$fileInclude}");
else echo ERROR_NOT_FOUND_FILE;
$viewData = ob_get_clean();
/*end view*/

include_once('view/web.php');