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
<link rel="stylesheet" type="text/css" href="themes/website/styleTablet.css" media="screen and (min-width:480px) and (max-width:800px)" />
<link rel="stylesheet" type="text/css" href="themes/website/style.css" media="screen and (min-width:800px)" />
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

  ga('create', 'UA-64073648-6', 'auto');
  ga('send', 'pageview');

</script>
<?php
	include_once('web_admin.php');
	include_once('web_header.php');
?>
<div class="container">
	<?php
    echo $c->viewNavigator($lang, $currentMenu['id']);
	if(isset($_SESSION['adminId']) && isset($_SESSION['adminName'])){
		echo 'Chào: '.$_SESSION['adminName'].' | <a href="'.CONS_BASE_URL.'/cp_admin/user/?logout=1" style="color:#F00; font-weight:bold">Logout</a><div class="clear20"></div>';
	}
	?>
	
    <?php
	include_once('web_left.php');
	include_once('web_right.php');
	?>
    
    <script type="text/javascript">
	$(document).ready(function(e) {
        $("#demo1_menu li").click(function(){
			alert();
		});
    });
	</script>
    
    
    
    <script type="text/javascript">
	$(document).ready(function(e) {
		function heightAuto(){
			var width = $(window).width();
			if(width > 800){
				$("#left").css("height", "auto");
				var heightL = $("#left").height();
				var heightR = $("#right").height();
				if(heightR > heightL) $("#left").height(heightR);
			}
			return true;
		}
		heightAuto();
		
		$("#tab .item").click(function(){
			var id = $(this).attr("idTab");
			$("#tab .item").removeClass("active");
			$(this).addClass("active");
			$(".viewpost .tab").removeClass("active");
			$("#tab" + id).addClass("active");
			heightAuto();
			return true;
		});
	});
	</script>
</div>

<?php
include_once('web_footer.php');
?>

<?php
/*echo $viewData;*/
?>
<script type="text/javascript" src="js/js_checks_field.js"></script>
<script type="text/javascript" src="js/js_web.js"></script>
</body>
</html>