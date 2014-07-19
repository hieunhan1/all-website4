<?php
if($_GET['ajax']=='ajax_number_khachhang'){
	$table = $_GET['t'];
	echo $this->_model->_ajax_number_khachhang($table);
}