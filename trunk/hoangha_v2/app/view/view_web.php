<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tag_head;?>
<link rel="stylesheet" type="text/css" href="themes/website/css/style.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<div id="wrapper">
	<?php
    include_once('view_web_header.php');
	flush();
	
	echo $include; flush();
	
	include_once('view_web_footer.php');
	?>
</div>
<script type="text/javascript" src="js/jquery.corner.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</body>
</html>