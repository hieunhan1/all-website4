<div id="header" class="content">
	<div id="lang">
    	<li class="li allIcon" style="background-position:0px 2px"><a href="/?lang=vi">Tiếng Việt</a></li>
    	<li class="li allIcon" style="background-position:0px -28px"><a href="/">English</a></li>
    </div>
	<?php
    if($lang==CONS_DEFAULT_LANG) $link=CONS_BASE_URL;
	else $link=CONS_BASE_URL.'/?lang='.$lang;
	?>
	<a href="<?php echo $link;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo.png" id="logo" alt="<?php echo $config['sitename'];?>" /></a>
    <?php include_once('web_menu.php');?>
</div>