<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tag_head;?>
<link rel="stylesheet" type="text/css" href="themes/website/css/style_general.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<div id="wrapper">
	<?php include_once('view_web_menu.php');?>
	<div id="header">
    	<div id="logo"><a href="<?php echo CONS_BASE_URL;?>"><img src="themes/website/img/logo.png" alt="Nhận tiệc Hoa Mai" /></a></div>
        
        
        <?php echo $slogan;?>
        <div id="support" class="bogoc_5px">
        	<p style="background-color:#333">Hỗ trợ đặt tiệc nhanh</p>
            <p style="background-color:#FF7C38; font-size:130%"><?php echo $this->_config['hotline'];?></p>
        </div>
    </div>
    
    <?php
    include_once('view_web_slider.php');
    echo $include;
	?>
    <div id="footer">
    	<p>Địa chỉ: <?php echo $this->_config['address'];?></p>
    	<p>Phone: <?php echo $this->_config['tel'];?></p>
    	<p>Email: <?php echo $this->_config['email'];?></p>
        <div style="clear:both; height:1px"></div>
    </div>
</div>

<div id="menu_copy">
	<div id="copyright"><?php echo $this->_config['copyright'];?></div>
	<div id="menu_foo">
    	<?php
        $position = 3;
		$data = $this->_model->_web_menu($this->_lang, 0, $position);
		foreach($data as $row){
			echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
		}
		?>
    </div>
    <div style="clear:both; height:5px"></div>
</div>

<script type="text/javascript" src="js/jquery.corner.js"></script>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</body>
</html>