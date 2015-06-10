<?php
if($lang==CONS_DEFAULT_LANG) $link=CONS_BASE_URL;
else $link=CONS_BASE_URL.'/?lang='.$lang;
?>
<div id="top">
	<div id="search" class="allIcon"><input type="text" name="txtSearch" id="txtSearch" class="txt" placeholder="search" /></div>
    <div id="lang">
    	<a href="<?php echo CONS_BASE_URL;?>/?lang=vi" class="allIcon" style="background-position:0px 2px">Tiếng Việt</a>
        <a href="<?php echo CONS_BASE_URL;?>/?lang=en" class="allIcon" style="background-position:0px -28px">English</a>
    </div>
</div>

<div id="header">
	<div class="info">
    	<span class="span"><?php echo $config['address'];?></span>
    	<span class="span"><span>Telephone:</span> <?php echo $config['tel'];?></span>
    	<span class="span"><span>Fax:</span> <?php echo $config['fax'];?></span>
        <span class="span"><span>Email:</span> <?php echo $config['email'];?></span>
    </div>
	<a href="<?php echo $link;?>" title="<?php echo $config['sitename'];?>"><img src="themes/website/img/logo.png" id="logo" alt="<?php echo $config['sitename'];?>" /></a>
    <?php include_once('web_menu.php');?>
</div>