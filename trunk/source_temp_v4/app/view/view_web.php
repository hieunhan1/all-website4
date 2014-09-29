<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tab_head;?>
<meta name="google-site-verification" content="cm0f4CDT-oKWl5mL6O8ehGzsKSmFCf2tWmN81cbXzps" />
<!--Insert CSS-->
<link rel="stylesheet" type="text/css" href="css/desktop.css" media="screen,handheld">
<link rel="stylesheet" type="text/css" href="css/mobile.css" media="screen and (min-width: 18.750em) and (max-width: 34.375em)">
<link rel="stylesheet" type="text/css" href="css/tablet.css" media="screen and (min-width: 34.375em) and (max-width: 48em)">
<link rel="stylesheet" type="text/css" href="css/desktop.css" media="screen and (min-width: 48em)">
<!--IE9 không hỗ trợ query media, do vậy ta sẽ dùng respond.js để bật Responsive cho IE9-->
<!--[if lt IE 9]> 
  <link rel="stylesheet" type="text/css" href="css/desktop.css">
<![endif]-->

<script type="text/javascript" src="library/js/jquery.min.js"></script>
</head>

<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-52659131-1', 'auto');
  ga('send', 'pageview');
</script>
<?php
include_once('view/view_web_header.php');
include_once('view/view_web_menu.php');
include_once('view/view_web_slider.php');
flush();
?>

<div id="content"><div class="content">
	<?php echo $include; flush();?>
</div></div>

<div id="menu_footer">
	<div class="content">
    <?php
	$position = 2;
	$data = $this->_model->_web_menu($lang, 0, $position);
	foreach($data as $row){
		echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
	}
	?>
    <div id="run_top">Đầu trang</div>
    </div>
</div>

<div id="footer">
	<div class="content">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td>
                	<h3><?php echo $row_config['name']; ?></h3>
                    <?php echo $row_config['contact_foo']; ?>
                </td>
            	<td>Kết nối với chúng tôi<br />
                	<?php
                    $data = $this->_model->_web_menu($lang, 0, 6);
					foreach($data as $row){
						echo '<a href="'.$row['url'].'" target="_blank"><img src="'.CONS_IMAGES_CATALOG.$row['url_hinh'].'" alt="'.$row['name'].'" style="margin-right:5px" /></a>';
					}
					?>
                </td>
                <td width="250">
                	<div class="fb-like" data-href="https://www.facebook.com/pages/Gian-h%C3%A0ng-b%C3%A1n-l%E1%BA%BB/817637464948022" data-width="250" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
                	<div id="fb-root"></div>
					<script>(function(d, s, id) {
                      var js, fjs = d.getElementsByTagName(s)[0];
                      if (d.getElementById(id)) return;
                      js = d.createElement(s); js.id = id;
                      js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.0";
                      fjs.parentNode.insertBefore(js, fjs);
                    }(document, 'script', 'facebook-jssdk'));</script>
                </td>
            </tr>
        </table>
    </div>
</div>

<script type="text/javascript" src="library/js/jquery.corner.js"></script>
<script type="text/javascript" src="library/js/js_checks_field.js"></script>
<script type="text/javascript" src="library/js/js_web.js"></script>
</body>
</html>