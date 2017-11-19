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
    
    <div id="gw-menu-mobile-btn"><i class="fa fa-bars"></i></div>
    
    <div style="clear:both; height:0px"></div>
</div>

<script type="text/javascript">
$('body').on('click', '#gw-menu-mobile-btn', function(){
	if ( !$('#gw-menu-mobile').length ) {
		var menu_str = '';
		if ( $('.gw-menu-mobile-item').length ) {
			$('.gw-menu-mobile-item').each(function(index, element) {
				menu_str += $(element).html();
			});
		}
		
		menu_str = '<div id="gw-menu-mobile">'
			+ '<div id="gw-menu-mobile-nav">' + menu_str + '</div>'
			+ '<div id="gw-menu-mobile-bg" class="gw-menu-mobile-close"></div>'
		+ '</div>';
		
		$('body').append(menu_str);
		$('#gw-menu-mobile-nav').css({'padding-top':'5%', 'padding-bottom':'5%'});
		
		var total = 0;
		$('#gw-menu-mobile-nav > li').each(function(index, element) {
			total += $(element).height();
		});
		
		var height_win = $(window).height();
		if ( height_win>total ) {
			var padding = (parseInt(height_win) - total) / 2;
				padding = parseInt(padding);
				
			setTimeout(function() {
				$('#gw-menu-mobile-nav').animate({'padding-top': padding + 'px'});
			}, 100);
		}
	}
	
	$('#gw-menu-mobile').slideDown(200);
});

$('body').on('click', '.gw-menu-mobile-close', function(){
	$('#gw-menu-mobile').slideUp(200);
});
</script>