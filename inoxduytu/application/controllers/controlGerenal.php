<?php
class controlGerenal{
	public $_model;
	public function __construct(){
		$this->_model = new modelGerenal;
	}
	
	public function config($lang){
		$file_lang = "languages/lang_{$lang}.php";
		if(file_exists($file_lang)) include_once($file_lang);
		return $this->_model->_config($lang);
	}
	
	public function tagHead($title, $des, $key, $image, $url='', $sitename='', $robots='INDEX,FOLLOW'){
		$arr = array(
			'title'=>$title,
			'des'=>$des,
			'key'=>$key,
			'img'=>$image,
			'url'=>$url,
			'sitename'=>$sitename,
			'robots'=>$robots,
		);
		return $arr;
	}
	
	public function getSubmenu($lang, $parent, $position){
		$data = $this->_model->_listMenu($lang, $parent, $position);
		$view='';
		if(count($data)>0){
			$view.='<ul>';
			foreach($data as $row){
				$view .= '<li><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
				$view .= $this->getSubmenu($lang, $row['id'], $position);
				$view .= '</li>';
			}
			$view .= '</ul>';
		}
		return $view;
	}
	
	public function navigator($lang, $parent, $arr=NULL){
		if(!$arr) $arr=array();
		if($parent==0){
			if($lang=='vi') $arr[] = array('name'=>'Trang chủ', 'url'=>'', 'title'=>'');
			else $arr[] = array('name'=>'Home', 'url'=>'?lang=en', 'title'=>'');
			return array_reverse($arr);
		}
		$row = $this->_model->_menuIdOrAlias($parent);
		$arr[] = array('name'=>$row['name'], 'url'=>$row['url'], 'title'=>$row['title']);
		$arr = $this->navigator($lang, $row['parent'], $arr);
		return $arr;
	}
	public function viewNavigator($lang, $id){
		$i=0;
		$str='<div id="navigator">';
		$data = $this->navigator($lang, $id);
		foreach($data as $row){
			$i++;
			if($i!=1)
				$str.='<span>&gt;&gt;</span><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
			else
				$str.='<a href="/" id="naviHome" class="allIcon">&nbsp;</a>';
		}
		$str.='</div>';
		return $str;
	}
}
?>