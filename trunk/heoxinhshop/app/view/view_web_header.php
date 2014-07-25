<div id="header">
    <div id="icon_header">
        <div class="icon_header_item" style="background-position:0px 4px">
            <h4>Giao hàng</h4>
            <p>Nhanh chóng - Tiện lợi</p>
        </div>
        <div class="icon_header_item" style="background-position:0px -31px">
            <h4>Thanh toán - Thuận tiện</h4>
            <p>Đơn giản - An toàn</p>
        </div>
        <div class="icon_header_item" style="background-position:0px -66px">
            <h4>7 ngày đổi hàng</h4>
            <p>Miễn phí trả đổi</p>
        </div>
    </div>
    <div id="hotline">Hotline: <span><?php echo $this->_config['tel'];?></span></div>
    <div id="chat">
        <div id="chat_text">Chat:</div>
        <?php
        if($this->_config['yahoo']!='') echo '<div id="chat_yahoo"><a href="ymsgr:sendIM?'.$this->_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$this->_config['yahoo'].'&amp;m=g&amp;t=1"></a></div>';
		if($this->_config['skype']!='') echo '<div id="chat_skype"><a href="Skype:'.$this->_config['skype'].'?chat"><img src="http://mystatus.skype.com/bigclassic/'.$this->_config['skype'].'" title="" height="23" alt=""></a></div>';
		?>
    </div>
    <div id="logo">
        <a href="/"><img src="css/web_img/logo.gif" alt="heo xinh shop" /></a>
        <p><?php echo $this->_config['slogan'];?></p>
    </div>
    <div id="search" class="bogoc_10px">
        <input type="text" name="txtSearch" id="txtSearch" placeholder="Nhập từ khóa" />
        <input type="button" name="btnSearch" value="&nbsp;" id="btnSearch" />
    </div>
    <div id="cart" class="bogoc_10px"><a href="gio-hang/">Giỏ hàng</a> (<?php echo count($_SESSION['list_order_sp_name']);?>)</div>
    <div style="width:700px; height:1px; clear:right; background:none"></div>
    <?php include_once('view_web_menu.php');?>
</div>