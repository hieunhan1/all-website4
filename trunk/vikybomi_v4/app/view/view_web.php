<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<?php echo CONS_BASE_URL; ?>/" />
<?php echo $tab_head;?>
<link rel="stylesheet" type="text/css" href="css/web_style.css"/>
<script type="text/javascript" src="library/js/jquery.min.js"></script>
</head>

<body>


<div id="wrapper">
	
    <?php
	include_once('view_web_header.php');
	include_once('view_web_menu.php');
	include_once('view_web_slider.php');
	flush();
	
	echo $include; flush();
	?>
    <div style="clear:both; height:50px"></div>
    <div id="footer">
        <div id="footer_menu">
            <?php
            /*$qr = $tc->menu(0,5,$lang);
            while($row = mysql_fetch_array($qr)){
                echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            }*/
            ?>
            <span id="run_top"><img src="css/web_img/top.gif" alt="top" /></span>
        </div>
        <table width="1000px" border="0" cellpadding="0" cellspacing="0" style="line-height:25px; margin-top:10px">
          <tr>
            <td width="250" valign="top" style="padding-right:30px">
                <div style="font-weight:bold; color:#333; padding-bottom:5px; border-bottom:solid 1px #CCC"><?php echo const_ket_noi_chung_toi; ?></div>
                <div id="social">
                <?php
                /*$qr = $tc->menu(0,6);
                while($row = mysql_fetch_array($qr)){
                    echo '<div class="item_social"><a href="'.$row['url'].'" title="'.$row['title'].'" target="_blank"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" />'.$row['name'].'</a></div>';
                }*/
                ?>
                </div>
            </td>
            <td valign="top" style="padding-top:5px"><?php echo $row_config['contact_foo'];?></td>
            <td align="right"><?php echo $row_config['copyright'];?></td>
          </tr>
          <tr><td colspan="3">&nbsp;</td></tr>
        </table>
    </div>
</div>
<?php
//include_once('blocks/buy.php'); flush();
//include_once('blocks/qc2ben.php');
//include_once('images/noel-2014/temp.php');

?>
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-38998660-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<script type="text/javascript" src="library/js/jquery.corner.js"></script>
<script type="text/javascript" src="library/js/js_checks_field.js"></script>
<script type="text/javascript" src="library/js/js_web.js"></script>
</body>
</html>