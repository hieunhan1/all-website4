<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<?php
function connect_data($host, $user, $pass, $database){
	$con = mysqli_connect($host, $user, $pass, $database);
	if(mysqli_connect_errno($con)) die(mysqli_connect_error($con)); 	
	mysqli_set_charset($con,"utf8");
	return $con;
}
function close_data($con){
	mysqli_close($con);
}
function _change_dau_nhay($str){
	$str = str_replace("'",'&#39;',$str);
	return $str;
}

$con	= connect_data('localhost', 'hoangha_us', 'K97D5#vGt', 'hoangha_db');
//$con_v2	= connect_data('localhost', 'root', 'root', 'hoangha_v2');



?>

</body>
</html>
