<div id="top">
	<div class="content">
    	<div id="top_support">
        	<span style="font-weight:bold; background-position:0px 2px"><?php echo $row_config['tel']; ?></span>
            <span style="font-weight:bold; background-position:0px -28px"><?php echo $row_config['email']; ?></span>
            <?php if($row_config['yahoo']!='') echo '<span style="background:none; padding:6px 0 0 0"><a href="ymsgr:sendIM?'.$row_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row_config['yahoo'].'&m=g&t=1" /></a></span>';?>
        </div>
        
        <div id="top_user">
        	<span style="background-position:0px -88px"><a href="javascript:;">Đăng ký</a></span>
            <span style="background-position:0px -118px"><a href="javascript:;">Đăng nhập</a></span>
        </div>
    </div>
</div>

<div id="header">
	<div class="content">
		<a href="/" title="ChamCham Mùng Chống Muỗi"><img id="logo" src="css/web_img/logo.png" alt="ChamCham Mùng Chống Muỗi" /></a>
    	<div id="search">
        	<div id="search_txt"><input type="text" name="txtSearch" id="txtSearch" placeholder="Vui lòng nhập từ khóa."  /></div>
        	<div id="search_btn"><input type="button" name="btnSearch" value="Tìm"  /></div>
        </div>
    </div>
</div>