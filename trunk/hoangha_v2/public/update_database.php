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

$con	= connect_data('localhost', 'root', 'root', 'hoangha');
$con_v2	= connect_data('localhost', 'root', 'root', 'hoangha_v2');

/*//menu
$sql = "SELECT * FROM `menu`";
$qr = mysqli_query($con, $sql);
$total = mysqli_num_rows($qr); echo "<p style='color:#00F'>{$total}</p>";
while($row = mysqli_fetch_array($qr)){
	$id = $row['id'];
	$name = _change_dau_nhay($row['name']);
	$name_rewrite = _change_dau_nhay($row['name_rewrite']);
	$url = _change_dau_nhay($row['url']);
	$url_hinh = $row['url_hinh'];
	$parent_id = $row['parent_id'];
	$order = $row['order'];
	$status = $row['status'];
	$title = _change_dau_nhay($row['title']);
	$metaDescription = _change_dau_nhay($row['metaDescription']);
	$metaKeyword = _change_dau_nhay($row['metaKeyword']);
	$other = $row['other'];
	$lang = $row['lang'];
	$type_id = $row['type_id'];
	$position_id = $row['position_id'];
	$sql_v2 = "INSERT INTO `web_menu` (`id`, `name`, `name_alias`, `url`, `url_img`, `title`, `description`, `tags`, `parent`, `order`, `other`, `lang`, `status`, `type_id`, `position_id`) VALUES ('{$id}', '{$name}', '{$name_rewrite}', '{$url}', '{$url_hinh}', '{$title}', '{$metaDescription}', '{$metaKeyword}', '{$parent_id}', '{$order}', '{$other}', '{$lang}', '{$status}', '{$type_id}', '{$position_id}')";
	$qr_v2 = mysqli_query($con_v2, $sql_v2);
	if($qr_v2) $message = ' - <span style="color:#00F">OK</span>'; else $message = ' - <span style="color:#F00">'.$sql_v2.'</span>';
	echo $name.$message.'<br />';
}
//end menu*/

/*//info
$sql = "SELECT * FROM `info`";
$qr = mysqli_query($con, $sql);
$total = mysqli_num_rows($qr); echo "<p style='color:#00F'><strong>{$total}</strong></p>";
while($row = mysqli_fetch_array($qr)){
	$id = $row['id'];
	$name = _change_dau_nhay($row['name']);
	$name_rewrite = _change_dau_nhay($row['name_rewrite']);
	$url_hinh = $row['url_hinh'];
	$description = _change_dau_nhay($row['description']);
	$content = _change_dau_nhay($row['content']);
	$date_create = strtotime($row['date_create']);
	$status = $row['status'];
	$metaKeyword = _change_dau_nhay($row['metaKeyword']);
	$other = $row['other'];
	$lang = $row['lang'];
	$menu_id = $row['menu_id'];
	$sql_v2 = "INSERT INTO `web_article` (`id`, `name`, `name_alias`, `url`, `url_img`, `description`, `tags`, `content`, `other`, `datetime`, `lang`, `status`, `menu_id`) VALUES ('{$id}', '{$name}', '{$name_rewrite}', '', '{$url_hinh}', '{$description}', '{$metaKeyword}', '{$content}', '{$other}', '{$date_create}', '{$lang}', '{$status}', '{$menu_id}')";
	$qr_v2 = mysqli_query($con_v2, $sql_v2);
	if($qr_v2) $message = ' - <span style="color:#00F">OK</span>'; else $message = ' - <span style="color:#F00">'.$sql_v2.'</span>';
	echo $name.$message.'<br />';
}
//end info*/

/*//sale online
$sql = "SELECT * FROM `support`";
$qr = mysqli_query($con, $sql);
$total = mysqli_num_rows($qr); echo "<p style='color:#00F'><strong>{$total}</strong></p>";
while($row = mysqli_fetch_array($qr)){
	$id = $row['id'];
	$name = _change_dau_nhay($row['name']);
	$menu_id = $row['menu_id'];
	$chucvu = $row['chucvu'];
	$yahoo = _change_dau_nhay($row['yahoo']);
	$skype = _change_dau_nhay($row['skype']);
	$email = _change_dau_nhay($row['email']);
	$phone = $row['phone'];
	$lang = $row['lang'];
	$status = $row['status'];
	$sql_v2 = "INSERT INTO `web_sale_online` (`id`, `name`, `regency`, `yahoo`, `skype`, `phone`, `email`, `lang`, `status`, `menu_id`) VALUES ('{$id}', '{$name}', '{$chucvu}', '{$yahoo}', '{$skype}', '{$phone}', '{$email}', '{$lang}', '{$status}', '{$menu_id}')";
	$qr_v2 = mysqli_query($con_v2, $sql_v2);
	if($qr_v2) $message = ' - <span style="color:#00F">OK</span>'; else $message = ' - <span style="color:#F00">'.$sql_v2.'</span>';
	echo $name.$message.'<br />';
}
//end sale online*/

/*//tracing_express
$sql = "SELECT * FROM `tracing_express`";
$qr = mysqli_query($con, $sql);
$total = mysqli_num_rows($qr); echo "<p style='color:#00F'>{$total}</p>";
while($row = mysqli_fetch_array($qr)){
	$id = $row['id'];
	$name = _change_dau_nhay($row['name']);
	$noi_gui = _change_dau_nhay($row['noi_gui']);
	$buucuc_gui = _change_dau_nhay($row['buucuc_gui']);
	$ngay_gui = strtotime($row['ngay_gui']);
	$loaihang = $row['loaihang'];
	$nguoi_nhan = _change_dau_nhay($row['nguoi_nhan']);
	$buucuc_nhan = _change_dau_nhay($row['buucuc_nhan']);
	$trongluong = _change_dau_nhay($row['trongluong']);
	$status = $row['status'];
	$lang = $row['lang'];
	$date_update = strtotime($row['date_update']);
	
	$sql_v2 = "INSERT INTO `web_tracing_express` (`id`, `name`, `send_to`, `send_post_offices`, `send_datetime`, `receive_form`, `receive_post_offices`, `receive_datetime`, `weight`, `category`, `lang`, `status`) VALUES ('{$id}', '{$name}', '{$noi_gui}', '{$buucuc_gui}', '{$ngay_gui}', '{$nguoi_nhan}', '{$buucuc_nhan}', '{$date_update}', '{$trongluong}', '{$loaihang}', '{$lang}', '{$status}')";
	$qr_v2 = mysqli_query($con_v2, $sql_v2);
	if($qr_v2) $message = ' - <span style="color:#00F">OK</span>'; else $message = ' - <span style="color:#F00">'.$sql_v2.'</span>';
	echo $name.$message.'<br />';
}
//end tracing_express*/

/*//contact
$sql = "SELECT * FROM `contact`";
$qr = mysqli_query($con, $sql);
$total = mysqli_num_rows($qr); echo "<p style='color:#00F'><strong>{$total}</strong></p>";
while($row = mysqli_fetch_array($qr)){
	$id = $row['id'];
	$name = _change_dau_nhay($row['name']);
	$email = _change_dau_nhay($row['email']);
	$phone = $row['phone'];
	$diachi = _change_dau_nhay($row['diachi']);
	$message = _change_dau_nhay($row['message']);
	$lang = $row['lang'];
	$status = $row['status'];
	$date_create = strtotime($row['date_create']);
	$sql_v2 = "INSERT INTO `hoangha_v2`.`web_contact` (`id`, `name`, `email`, `phone`, `address`, `message`, `datetime`, `lang`, `status`) VALUES ('{$id}', '{$name}', '{$email}', '{$phone}', '{$diachi}', '{$message}', '{$date_create}', '{$lang}', '{$status}')";
	$qr_v2 = mysqli_query($con_v2, $sql_v2);
	if($qr_v2) $message = ' - <span style="color:#00F">OK</span>'; else $message = ' - <span style="color:#F00">'.$sql_v2.'</span>';
	echo $name.$message.'<br />';
}
//end contact*/


?>

</body>
</html>
