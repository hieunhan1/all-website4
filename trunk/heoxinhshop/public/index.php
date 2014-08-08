<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<?php
$nextWeek = time() + (7 * 24 * 60 * 60); echo time();
                   // 7 days; 24 hours; 60 mins; 60 secs
echo 'Now:       '. date('Y-m-d') ."<br />";
echo 'Next Week: '. date('Y-m-d', $nextWeek) ."<br />";
// or using strtotime():
echo 'Next Week: '. date('Y-m-d', strtotime('+1 week')) ."<br /><br />";

echo date('Y-m-d H:i:s','1406359819').'<br />';
echo date('Y-m-d H:i:s','1405943696').'<br />';
echo date('Y-m-d H:i:s','1405943848').'<br />';
echo date('Y-m-d H:i:s','1405943739').'<br />';
echo date('Y-m-d H:i:s','1405943786').'<br />';
echo date('Y-m-d H:i:s','1405943696').'<br />';
?>

</body>
</html>