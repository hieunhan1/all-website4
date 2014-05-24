<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$db = mysqli_connect("localhost", "root", "root", "source_temp_v4") or die("Lỗi kết nối");
mysqli_autocommit($db, FALSE); // turn off auto-commit

$result = mysqli_query($db, "SELECT * FROM web_menu_admin"); // get account balances
while ($row = mysqli_fetch_assoc($result)) $accounts[] = $row;
?>

</body>
</html>