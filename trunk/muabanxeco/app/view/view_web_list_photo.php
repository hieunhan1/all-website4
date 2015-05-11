<?php include_once('view_web_navigator.php');?>
<div class="viewpost content z-index-2">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#222"><?php echo $current_menu['description'];?></h2>
</div>
<div id="photos" class="z-index-2 content">
    <ul>
    <?php
    $per_page = $this->_config['limit_4'];
	$startrow = ($current_menu['page_number']-1)*$per_page;
	$data = $this->_model->_list_web_photo($current_menu['id'], $per_page, $startrow, $totalrows);
	if($totalrows>0){
		foreach($data as $row){
			echo '<li class="li">
				<a class="fancybox" href="'.$current_menu['type_menu_img'].$row['img_avatar'].'" data-fancybox-group="gallery" title="'.$row['name'].'">
					<div class="img"><img src="'.$current_menu['type_menu_img_thumb'].$row['img_avatar'].'" alt="'.$row['name'].'" /></div>
					<h3>'.$row['name'].'</h3>
				</a>
			</li>';
		}
		$phantrang = '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
		if($totalpages>=$current_menu['page_number']) echo $phantrang; else echo '<p style="padding:10px 0px 100px 50px">This page does not exist.</p>';
	}else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
	
	?>
    </ul>
</div>
<div style="clear:both; height:30px;"></div>

<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
<script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function(){
        $(".fancybox").fancybox();
    });
</script>


