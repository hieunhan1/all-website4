<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $tagHead['title'];?></title>
<meta name="description" content="<?php echo $tagHead['des'];?>" />
<meta name="keywords" content="<?php echo $tagHead['key'];?>" />
<meta name="robots" content="<?php echo $tagHead['robots'];?>" />
<meta property="og:title" content="<?php echo $tagHead['title'];?>" />
<meta property="og:description" content="<?php echo $tagHead['des'];?>" />
<meta property="og:url" content="<?php echo $tagHead['url'];?>" />
<meta property="og:image" content="<?php echo $tagHead['img'];?>" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<link type="icon/x-icon" href="themes/website/img/favicon.ico" rel="shortcut icon" />
<!--Insert CSS-->
<link rel="stylesheet" type="text/css" href="themes/website/styleMobile.css" media="screen and (min-width:210px) and (max-width:480px)" />
<link rel="stylesheet" type="text/css" href="themes/website/styleTablet.css" media="screen and (min-width:480px) and (max-width:768px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:768px)" />
<!--[if lt IE 9]>
<link rel="stylesheet" type="text/css" href="themes/website/style.css" />
<![endif]-->
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>

<body>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-64073648-1', 'auto');
  ga('send', 'pageview');
</script>
<div id="wrapper">
	<?php
    include_once('web_header.php'); flush();
    include_once('web_slider.php');
    echo $viewData;
    ?>
</div>
<?php include_once('web_footer.php');?>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>

<script lang="javascript">(function() {var pname = ( (document.title !='')? document.title : document.querySelector('h1').innerHTML );var ga = document.createElement('script'); ga.type = 'text/javascript';ga.src = '//live.vnpgroup.net/js/web_client_box.php?hash=dc159bcb59db19e3e02e441d852ba61f&data=eyJzc29faWQiOjQxODUwMDcsImhhc2giOiJhODhlZTE3ODAxZDc4YTVlZjRlN2UxNTQxODBhOTI2ZCJ9&pname='+pname;var s = document.getElementsByTagName('script');s[0].parentNode.insertBefore(ga, s[0]);})();</script>

<div class="zalo-chat-widget" data-oaid="3410751298218565836" data-welcome-message="Rất vui khi được hỗ trợ bạn!" data-autopopup="0" data-width="350" data-height="420"></div>

<script src="https://sp.zalo.me/plugins/sdk.js"></script>
</body>
</html>