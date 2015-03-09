<script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
<div id="content">
	<?php include_once('view_web_navigator.php');?>
    <div class="viewpost">
        <h1><?php echo $current_menu['title'];?></h1>
        <h2 style="color:#666"><?php echo $current_menu['description'];?></h2>
    </div>
    <div id="photos">
        <?php
        $i = 0;
        $per_page = $this->_config['limit_3'];
        $startrow = ($current_menu['page_number']-1)*$per_page;
        $data = $this->_model->_list_web_photo($current_menu['id'], $per_page, $startrow, $totalrows);
        if($totalrows>1){
            foreach($data as $row){
                $i++;
				if($i%3 == 1) $style = ''; else $style = 'style="margin-left:30px"';
				echo '<p class="box_photos" '.$style.'><a class="fancybox" href="'.$current_menu['type_menu_img'].$row['img_avatar'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.$current_menu['type_menu_img_thumb'].$row['img_avatar'].'" alt="'.$row['name'].'" /></a></p>';
            }
            $phantrang = '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
            if($totalpages>=$current_menu['page_number']) echo $phantrang; else echo '<p style="padding:10px 0px 100px 50px">This page does not exist.</p>';
        }else if($totalrows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
        else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
        ?>
        <script type="text/javascript" charset="utf-8">
			$(document).ready(function(){
				$(".fancybox").fancybox();
			});
		</script>
    </div>
    <div style="clear:both; height:10px"></div>
</div>