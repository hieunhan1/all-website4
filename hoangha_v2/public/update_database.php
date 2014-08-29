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

$con	= connect_data('localhost', 'root', 'root', 'hoangha');
$con_v2	= connect_data('localhost', 'root', 'root', 'hoangha_v2');

$sql = "SELECT * FROM info WHERE status=1";
$qr = mysqli_query($con, $sql);
while($row = mysqli_fetch_array($qr)){
	echo $row['name'].'<br />';
}






?>

</body>
</html>
