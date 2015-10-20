<div class="container">
    <div id="product">
        <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
        <div class="viewpost">
        	<h1><?php echo $rowDetail['name'];?></h1>
            <div id="product_img"><img src="<?php echo $currentMenu['typeMenuImg'].$rowDetail['img'];?>" alt="<?php echo $rowDetail['name'];?>" /></div>
            <div id="product_more"><?php echo $rowDetail['more'];?></div>
            <div class="clear1"></div>
			<?php echo $rowDetail['content'];?>
            <div class="clear1"></div>
        </div>
		
        <?php
        $data = $cD->_model->_viewOtherPost($lang, $rowDetail['id'], $currentMenu['id']);
        if(count($data)>0){
			$i=0;
			echo '<div id="homeType2"> <h3 class="title">'.CONS_OTHER_PRODUCT.'</h3>';
            foreach($data as $row){
                $i++;
				if($i%3 != 1) $style='margin'; else $style='';
				echo '<div class="box '.$style.'">
					<div class="img"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></div>
					<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="h3">'.$row['name'].'</h3></a>
					<a href="'.$row['url'].'" class="link">Xem chi tiết</a>
				</div>';
            }
            echo '</div>';
        }
        ?>
    </div>

	<?php include_once('web_left.php');?>
</div>
<div class="clear30"></div>
<div class="clear30"></div>