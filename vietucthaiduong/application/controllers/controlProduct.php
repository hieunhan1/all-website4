<?php
class controlProduct{
	public $_model;
	public function __construct($alias){
		$this->_model = new modelProduct;
	}
	
	public function viewDetail(){
		$data = $this->_model->_viewDetail($this->_alias);
	}
}
?>