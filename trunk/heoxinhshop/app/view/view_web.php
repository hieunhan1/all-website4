<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tab_head;?>
<link rel="stylesheet" type="text/css" href="css/web_style.css"/>
<script type="text/javascript" src="library/js/jquery.min.js"></script>
</head>

<body>
<div id="wrapper">
	<?php
    include_once('view_web_header.php'); flush();
	
	include_once('view_web_slider.php'); flush();
	
	echo $include; flush();
	?>
    <div id="footer">
    	<div id="menu_footer" class="bogoc_10px">
        	<?php
            $data = $this->_model->_web_menu($lang, 0, 2);
			foreach($data as $row){
				echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
			}
			?>
            <div id="run_top">Đầu trang</div>
        </div>
        <table width="100%" border="0" cellpadding="0" cellspacing="10" style="color:#666; margin-bottom:10px">
        	<tr>
            	<td valign="top">Kết nối với chúng tôi</td>
            	<td valign="top" style="line-height:180%"><?php echo '<p style="color:#EE3388; font-weight:bold">'.$this->_config['name'].'</p>'.$this->_config['contact_foo'];?></td>
            	<td style="text-align:right">Copyright © 2014 heoxinhshop.com</td>
            </tr>
        </table>
    </div>
</div>
<script type="text/javascript" src="library/js/jquery.corner.js"></script>
<script type="text/javascript" src="library/js/js_checks_field.js"></script>
<script type="text/javascript" src="library/js/js_web.js"></script>
</body>
</html>