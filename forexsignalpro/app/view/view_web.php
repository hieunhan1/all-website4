<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tag_head;?>
<!--Insert CSS-->
<link rel="stylesheet" type="text/css" href="themes/website/styleMobile.css" media="screen and (min-width:210px) and (max-width:480px)" />
<link rel="stylesheet" type="text/css" href="themes/website/styleTablet.css" media="screen and (min-width:480px) and (max-width:800px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:800px)" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
	<!--
    payment cancel - http://www.forexsignalpro.net/payment/?status=cancel
    payment cancel - http://www.forexsignalpro.net/payment/?status=error
    payment success - http://www.forexsignalpro.net/payment/?status=success
    
    chua ro - http://www.forexsignalpro.net/payment/?status=success&url=
    -->
<?php
if($this->_control!='user'){
	include_once('view_web_header.php');
	include_once('view_web_menu.php');
}else{
	include_once('view_web_user_header.php');
	include_once('view_web_user_menu.php');
}
flush();
include_once('view_web_slider.php'); flush();
echo $include; flush();
?>
<?php include_once('view_web_footer.php');?>
<script type="text/javascript" src="js/jquery.corner.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</body>
</html>