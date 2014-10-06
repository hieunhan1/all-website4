<!DOCTYPE html>
<html>
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Quản trị website</title>
<link rel="stylesheet" type="text/css" href="css/admin_style.css" />
<script type="text/javascript" src="library/js/jquery.min.js"></script>
<script type="text/javascript" src="library/js/js_checks_field.js"></script>
</head>

<body>
<form name="form1" method="post" action="">
	<div id="login">
		<h2>Đăng nhập quản trị</h2>
		<p style="color:#F00"><?php echo $error; ?></p>
		<p>
        	Tên đăng nhập:<br /><input type="text" name="username" value="<?php echo $_POST['username'];?>" id="username" /><br />
            <span class="error" id="username_message"></span>
        </p>
        
		<p>Mật khẩu:<br /><input type="password" name="password" value="<?php echo $_POST['password'];?>" id="password" /><span class="error" id="password_message"></span></p>
        <p><input name="btnLogin" type="submit" id="btnLogin" value="&nbsp;" /></p>
	</div>
</form>
<script type="text/javascript">
$(document).ready(function(e) {
	$("#btnLogin").click(function(){
		var username = checks_user("#username","#username_message","Tài khoản đăng nhập chưa đúng");
		var password = check_text_length("#password","#password_message","Mật khẩu phải hơn 6 ký tự",6);
		if(username == false) return false;
		else if(password == false) return false;
		else return true;
	});
});
</script>
</body>
</html>