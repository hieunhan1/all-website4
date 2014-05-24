<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quản trị website</title>
<link rel="stylesheet" type="text/css" href="../css/admin_style.css" />
</head>

<body>
<form name="form1" method="post" action="">
	<div id="login">
		<h2>Đăng nhập quản trị</h2>
		<p style="color:#F00"><?php echo $error; ?></p>
		<p>Tên đăng nhập:<br /><input type="text" name="username" id="username" /></p>
		<p>Mật khẩu:<br /><input type="password" name="password" id="password" /></p>
        <p style="width:auto; margin-top:10px"><input name="btnLogin" type="submit" id="btnLogin" value="&nbsp;" /></p>
	</div>
</form>
</body>
</html>