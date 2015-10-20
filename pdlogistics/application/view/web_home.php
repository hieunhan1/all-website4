<div class="container">
	<?php
    include_once('web_slider.php');
    include_once('web_booking.php');
	
	$dataMenu = $c->_model->_listParentMenu($currentMenu['id']);
    ?>
	<div class="clear20"></div>
	<div id="home">
        <div id="homeAbout" class="viewpost">
            <?php
            $data = $c->_model->_listDetailMenu('web_article', $currentMenu['id'], 1);
            echo '<h3 style="color:#f0484e; font-size:140%">'.$data[0]['name'].'</h3>
            <p>'.$data[0]['content'].'</p>
            <a href="'.$data[0]['url'].'" style="float:right; text-decoration:underline">'.CONS_READ_MORE.'</a><br /><br />';
            ?>
        </div>
        <div id="home_news">
            <h3 style="color:#4086AE; font-size:140%; padding-bottom:10px"><?php echo $dataMenu[0]['name'];?></h3>
            <?php
            $limit = 5;
            $data = $c->_model->_listDetailMenu('web_article', $dataMenu[0]['id'], $limit);
            foreach($data as $row){
                echo '<li class="home_news_item allIcon" style="background-position:0px -400px"><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a></li>';
            }
            ?>
        </div>
        <div class="clear1"></div>
        
        <?php if(isset($dataMenu[1]['name'])){?>
        <div id="service_home" class="all_icon_bg bogoc_5px">
            <a href="javascript:;"><h2><?php echo $dataMenu[1]['name'];?></h2></a>
            <?php
            $data = $c->_model->_listParentMenu($dataMenu[1]['id'], '`description`');
			foreach($data as $row){
				echo '<div class="service_home_box bogoc_5px"><a href="'.$row['url'].'" title="'.$row['name'].'" class="service_home_title"><h3>'.$row['name'].'</h3></a>';
				$m = explode(' - ', $row['description']);
				for($i=0; $i<count($m); $i++)
					echo '<h4 class="service_home_item allIcon"><a href="'.$row['url'].'">'.$m[$i].'</a></h4>';
				echo '</div>';
			}
			?>
            <div class="clear20"></div>
        </div>
    	<?php }?>
        
        <?php if(isset($dataMenu[2]['name'])){?>
        <div id="home_library">
            <h3 class="home_title"><?php echo $dataMenu[2]['name'];?></h3>
            <div id="photos"><ul>
				<?php
                $data = $c->_model->_listDetailMenu('web_photo', $dataMenu[2]['id'], 10, '`img`', '`order`');
                foreach($data as $row){
                    echo '<li class="img"><a class="fancybox" href="'.$urlImg[5]['url_img'].$row['img'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.$urlImg[5]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a></li>';
                }
                ?>
            </ul></div>
            <div style="clear:both; height:30px;"></div>
            <link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
            <script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
            <script type="text/javascript" charset="utf-8"> $(document).ready(function(){ $(".fancybox").fancybox(); }); </script>
        </div>
        <?php }?>
        
        <?php if(isset($dataMenu[3]['name'])){?>
        <div id="home_links">
            <h3 class="home_title"><?php echo $dataMenu[3]['name'];?></h3>
            <?php
            $position = 3;
            $data = $c->_model->_listSliderBanner('', $position);
            foreach($data as $row){
                echo '<li class="home_links_item"><a href="'.$row['url'].'" title="'.$row['name'].'"><img src="'.$urlImg[12]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a></li>';
            }
            ?>
        </div>
        <?php }?>
        <!--<div id="sale_online_cargo">
            <h3 style="color:#f0484e; font-size:140%">Sale online</h3>
            <div class="sale_online_cargo_item">Trụ sở TpHCM:
                <a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Mr.Liêm</a>
                <a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Ms.Thư</a>
            </div>
            <div class="sale_online_cargo_item">Chi nhánh Hà Nội: <a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Ms.Thư</a><a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Mr.Minh</a>
    </div>
            <div class="sale_online_cargo_item">Chi nhánh Đà Nẵng: <a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Ms.Trân</a><a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Ms.Nhàn</a>
    </div>
            <div class="sale_online_cargo_item">Chi nhánh Cần Thơ: <a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Mr.Nam</a><a href="ymsgr:sendIM?hieu_nhan1"><img src="http://opi.yahoo.com/online?u=hieu_nhan1&amp;m=g&amp;t=0"> Ms.Trinh</a>
    </div>
        </div>-->
    </div>
    
    <div class="clear30"></div>
</div>