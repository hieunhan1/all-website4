<?php
if($_GET['ajax']=='ajax_number_item'){
	$table = $_GET['table'];
	echo $this->_model->_ajax_number_item($table);
}

if($_GET['ajax']=='ajax_restore' && $this->_user=='admin'){
	$id = $_GET['id_ac'];
	settype($id, 'int');
	$this->_model->_restore_data($id);
}

if($_GET['ajax']=='menu_id'){
	$menu_id = $_GET['menu_id'];
	echo $this->_model->_menu_id($menu_id);
}

if($_GET['ajax']=='forum_menu_id'){
	$menu_id = $_GET['menu_id'];
	echo $this->_model->_forum_menu_id($menu_id);
}