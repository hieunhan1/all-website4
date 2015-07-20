<?php
class controlTuyendung{
	public $_model;
	public function __construct($alias){
		$this->_model = new modelTuyendung;
	}
	
	public function viewDetail(){
		$data = $this->_model->_viewDetail($this->_alias);
	}
}
?>