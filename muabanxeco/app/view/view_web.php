<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tag_head;?>
<link rel="stylesheet" type="text/css" href="themes/website/css/style_general.css" />
<link rel="stylesheet" type="text/css" href="themes/website/css/style_web.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<div id="wrapper">
	<div id="bg-1"></div>
    <?php
    include_once('view_web_header.php'); flush();
	echo $include; flush();
	?>
    <div style="clear:both; height:1px"></div>
	<?php include_once('view_web_footer.php');?>
</div>
<?php include_once('view_web_qc_2ben.php');?>
<script type="text/javascript" src="js/jquery.corner.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</body>
</html>