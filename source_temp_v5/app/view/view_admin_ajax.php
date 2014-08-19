<?php
if($_GET['ajax']=='ajax_number_khachhang'){
	$table = $_GET['t'];
	echo $this->_model->_ajax_number_khachhang($table);
}

if($_GET['ajax']=='ajax_restore'){
	$id = $_GET['id_ac'];
	settype($id, 'int');
	$this->_model->_restore_data($id);
}