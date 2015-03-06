<div id="right">
	<?php include_once('view_web_slider.php');?>
    <div id="navigator">
    <?php
    $i=0;
    $data = $this->navigator($idMenu,$lang);
    foreach($data as $row){
        $i++;
        if($i!=1){
			$lang_navigator = $lang.'/';
			$icon='<span>&gt;&gt;</span>';
		}else{
			$lang_navigator = '';
			$icon='';
		}
        echo $icon.'<a href="'.$lang_navigator.$row['url'].'">'.$row['name'].'</a>';
    }
    ?>
    </div>
    
    <div class="viewpost">
        <h1><?php echo $current_menu['title'];?></h1>
        <h2 style="margin-bottom:20px"><?php echo $current_menu['description'];?></h2>
    </div>
    
    <div id="photo_list">
        <?php
        $data = $this->_model->_list_menu_parent($idMenu);
		if(count($data)==0){
			$data2 = $this->_model->_list_photo($idMenu);
			foreach($data2 as $row){
				$str_image .= '<li><p class="img"><a class="fancybox" href="'.CONS_IMAGES_PHOTOS.$row['img_avatar'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.CONS_IMAGES_PHOTOS_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" /></a><h3>'.$row['name'].'</h3></p></li>';
			}
			echo '<div id="photos"><ul>'.$str_image.'</ul></div>
			<div style="clear:both; height:30px;"></div>
			<link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
			<script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
			<script type="text/javascript" charset="utf-8"> $(document).ready(function(){ $(".fancybox").fancybox(); }); </script>';
		}else{
			foreach($data as $row){
				echo '<div class="photo_list_item"><a href="'.$lang.'/'.$row['url'].'" title="'.$row['name'].'"><img src="'.CONS_IMAGES_CATALOG.$row['img_avatar'].'" alt="'.$row['name'].'" /><h3>'.$row['name'].'</h3></a></div>';
			}
		}
        ?>
    </div>
</div>

<div id="left">
	<div id="other_about">
    <?php
	$data = $this->_model->_list_menu_parent($current_menu['root_id']);
	if(count($data) > 0){
		foreach($data as $row){
			if($idMenu!=$row['id']) $style=''; else $style='style="color:#EA1D22; background-position:8px -22px"';
			echo '<li><a href="'.$lang.'/'.$row['url'].'" '.$style.'>'.$row['name'].'</a></li>';
		}
	}
	?>
    </div>
	<?php include_once('view_web_quick_booking.php');?>
</div>

<div style="clear:both; height:1px"></div>