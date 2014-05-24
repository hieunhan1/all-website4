<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <base href="<?=BASE_URL?>">
   <link href="<?=BASE_DIR?>css/c1.css" rel="stylesheet" type="text/css" />
   <title>Tin tức online</title>
</head>
<body>
    <div id="container">
        <div id="header">
			<div id="sitetitle">{SiteTitle}</div>
            <div id="search">
            	<form action="" method="get" name="frmSearch">
                    <input type="text" name="txtSearch" size="30" />
                    <input type="submit" name="btnSearch" value="Tìm kiếm" />
                </form>
            </div>
        </div>
        <div id="lang">
        	<a href="<?=BASE_URL?>vi/">Tiếng Việt</a>            
        	<a href="<?=BASE_URL?>en/">English</a>
        </div>

        <div id="menungang">
        	<?php include "view/menu.php"?>
        </div>
        <?php if ($this->current_action=="index") {?>
            <div id="content1"><?php include "view/bainoibat.php"; ?></div>
            <div id="info">  </div>
            <div id="content2"><?php include "view/baixemnhieu.php"?></div>    
        <?php }?>
        <div id="content3">
        	<div id="userinfo">
			<?php if (!isset($_SESSION['login_id'])) include "view/login_form.php";
                  else include "view/login_chao.php";?>
            </div>
        </div>
        <div id="quangcao">
        	<a href="#"> <img src="<?=BASE_DIR?>/img/template/qc1.jpg" width="400" height="90" align=left> </a>
			<a href="#"> <img src="<?=BASE_DIR?>/img/template/qc4.gif" width="385" height="90" align=left> </a>
        </div>
        <div id="content4">
		<?php 
		   if ($this->current_action=="detail") include "view/detail.php";
		   elseif ($this->current_action=="cat") include "view/baitrongloai.php";
		   else include "view/baimoi.php";
		?>
		</div>   
        <div id="footer">  </div>
    </div> <!--container-->
</body>
</html>