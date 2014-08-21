<div id="header">
    <div id="logo">
        <a href="/"><img src="themes/website/img/logo.png" alt="thoitrang09" /></a>
        <h3><?php echo $this->_config['slogan'];?></h3>
    </div>
    <div class="icon_header">
        <a href="gio-hang/"><div id="cart"><?php echo count($_SESSION['list_order_sp_name']);?></div>
        <p>Giỏ hàng</p></a>
    </div>
    <div class="icon_header">
        <div class="icon" style="background-position:center -100px"></div>
        <p><?php echo $this->_config['tel'];?></p>
    </div>
</div>