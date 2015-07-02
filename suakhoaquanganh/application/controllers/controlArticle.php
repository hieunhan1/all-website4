<?php
class controlArticle{
	public $_model;
	public function __construct($alias){
		$this->_model = new modelArticle;
	}
	
	public function viewDetail(){
		$data = $this->_model->_viewDetail($this->_alias);
	}
}
?>