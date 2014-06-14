<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tab_head;?>
<link rel="stylesheet" type="text/css" href="css/web_style.css"/>
<script type="text/javascript" src="library/js/jquery.min.js"></script>
</head>

<body>
<?php
include_once('view/view_web_header.php');
include_once('view/view_web_menu.php');
include_once('view/view_web_slider.php');
flush();
?>

<div id="content"><div class="content">
	<?php echo $include; flush();?>
</div></div>

<div id="menu_footer">
	<div class="content">
    <?php
	$position = 2;
	$data = $this->_model->_web_menu($lang, 0, $position);
	foreach($data as $row){
		echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
	}
	?>
    <div id="run_top">Đầu trang</div>
    </div>
</div>

<div id="footer">
	<div class="content">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td>
                	<h3><?php echo $row_config['name']; ?></h3>
                    <?php echo $row_config['contact_foo']; ?>
                </td>
            	<td>Kết nối với chúng tôi</td>
            </tr>
        </table>
    </div>
</div>


<script type="text/javascript" src="library/js/jquery.corner.js"></script>
<script type="text/javascript" src="library/js/js_checks_field.js"></script>
<script type="text/javascript" src="library/js/js_web.js"></script>
</body>
</html>