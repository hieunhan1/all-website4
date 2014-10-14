<div id="header">
    <div id="logo"><a href="" title="Mê ẩm thực"><img src="themes/website/img/logo.png" alt="logo mê ẩm thực" /></a></div>
    <div id="top_left">
    <?php
	$i=0;
    $position = 1;
	$data = $this->_model->_web_menu($lang, 0, $position);
	$total = count($data);
	foreach($data as $row){
		$i++;
		if($i!=$total) $str=' &nbsp; | &nbsp; '; else $str='';
		echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>'.$str;
	}
	?>
    </div>
    <!--<div id="top_right">Đăng ký &nbsp; | &nbsp; Đăng nhập &nbsp; | &nbsp; Giỏ hàng</div>-->
    <?php include('view_web_menu.php');?>
</div>