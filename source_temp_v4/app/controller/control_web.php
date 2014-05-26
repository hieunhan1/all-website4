<?php
class control_web{
	public $_model;
	public $_control;
	public $_action;
	public $_data;
	function __construct($control,$action,$data){
		$this->_model	= new model_web;
		$this->_control	= $control;
		$this->_action	= $action;
		$this->_data	= $data;
	}//construct

	function index(){
		if($this->_control == CONS_DEFAULT_WEB_CONTROLLER) echo 'Trang chủ';
		else{
			if($this->_action == CONS_WEB_VIEW_CONTENT) echo 'Trang chi tiết';
			elseif($this->_action == CONS_WEB_PHAN_TRANG) echo 'Trang danh muc';
		}
		
		include_once('view/view_web.php');
	}//index
}//class