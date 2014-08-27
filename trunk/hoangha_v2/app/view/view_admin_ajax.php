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