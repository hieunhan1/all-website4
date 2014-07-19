<div id="top">
    <div id="logo"><a href="<?php if($lang=='en') echo '?lang='.$lang;?>"><img src="css/web_img/logo.jpg" alt="Vikybomi" /></a></div>
    <div id="company_search">
        <h2 id="company"><?php echo $row_config['slogan'];?></h2>
        <div id="search">
            <input type="text" name="txtSearch" value="" placeholder="<?php echo CONS_TEXT_SEARCH;?>" id="txtSearch" class="txtSearch" />
            <input type="button" name="btnSearch" value="&nbsp;" class="btnSearch" />
        </div>
        <div id="icon_giohang"><a href="javascript:;">Giỏ hàng</a></div>
    </div>
    <div id="lang">
        <p><a href="?lang=vi"><img src="css/web_img/vi.gif" alt="Tiếng Việt" />Tiếng Việt</a></p>
        <p><a href="?lang=en"><img src="css/web_img/en.gif" alt="English" />English</a></p>
    </div>
    <div id="support">
        <p style="color:#666; width:auto; float:left; line-height:19px; text-align:center; padding-top:2px"><strong style="font-size:105%"><?php echo $row_config['tel'];?></strong><br />
        <span style="font-size:80%">Hỗ trợ khách hàng</span></p>
        <p style="width:auto; float:left; margin:22px 0 0 20px"><?php echo '<a href="ymsgr:sendIM?'.$row_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row_config['yahoo'].'&amp;m=g&amp;t=1"></a>';?></p>
    </div>
</div>