<div id="header" class="content">
	<?php
    if($lang==CONS_DEFAULT_LANG) $link=CONS_BASE_URL;
	else $link=CONS_BASE_URL.'/?lang='.$lang;
	?>
	<a href="<?php echo $link;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo.png" id="logo" alt="<?php echo $config['sitename'];?>" /></a>
    <?php include_once('web_menu.php');?>
</div>