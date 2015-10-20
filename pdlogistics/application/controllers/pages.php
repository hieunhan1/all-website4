<?php
class pages extends controlGerenal{
	public $_alias;
	public $_currentPage;
	public $_urlImg;
	public function __construct($alias, $currentPage=NULL){
		parent::__construct();
		$this->_alias = $alias;
		$this->_currentPage = $currentPage;
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
		
		$regex='/^http*(.*)$/';
		if(!preg_match($regex, $row['url'])) $url=CONS_BASE_URL.'/'.$row['url'];
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
	
	public function pagesList($url, $totalRows, $offSet, $perPage, $currentPage){
		$totalPages = ceil($totalRows/$perPage);
		if($totalPages==1) return false;
		$from = $currentPage-$offSet;
		$to = $currentPage+$offSet;
		if($from<=0) $from=1; 
		if($to>$totalPages) $to=$totalPages;
		$arr = '';
		if($currentPage>0 && $currentPage<=$totalPages){
			for($j=$from; $j<=$to; $j++){
				if($j!=$currentPage) $arr.='<a href="'.$url.$j.'/">'.$j.'</a>';
				else $arr.='<span>'.$j.'</span>';
			}
		}else{
			echo '<p class="error">'.ERROR_NOT_FOUND_PAGE.'</p>';
		}
		return $arr;
	}
}

//print_r($arrUrl);
$c = new pages($arrUrl['alias'], $arrUrl['currentPage']);
$currentMenu = $c->currentMenu();
if($currentMenu['id']==''){
	$error = ERROR_NOT_FOUND_PAGE;
	include_once('view/web_error.php');
	return false;
}

$lang = $currentMenu['lang'];
$config = $c->config($lang);

$urlImg = $c->_urlImg;

$currentPage = $arrUrl['currentPage'];
if($currentPage==1) $namePage=''; else $namePage=' - Page '.$currentPage;

$tagHead = $c->tagHead($currentMenu['title'].$namePage, $currentMenu['description'].$namePage, $currentMenu['tags'], $currentMenu['img'], $currentMenu['url']);

$table = $currentMenu['tableData'];
$tableInclude = 'web_'.$currentMenu['typeMenuName'];

/*view*/
$viewData = ob_start();
if(file_exists("view/{$tableInclude}_list.php")) include_once("view/{$tableInclude}_list.php");
else{
	$error = ERROR_NOT_FOUND_FILE;
	include_once('view/web_error.php');
	return false;
}
$viewData = ob_get_clean();
/*end view*/

include_once('view/web.php');