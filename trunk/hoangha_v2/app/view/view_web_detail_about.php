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
		<?php
        echo "<h1>{$row_detail['name']}</h1>";
        echo $row_detail['content'];
        ?>
    </div>
</div>

<div id="left">
	<?php include_once('view_web_quick_booking.php');?>
	<div id="other_about">
    <?php
	$data = $this->_model->_other_post_about($idMenu);
	if(count($data) > 0){
		foreach($data as $row){
			if($row_detail['id']!=$row['id']) $style=''; else $style='style="color:#EA1D22; background-position:8px -22px"';
			echo '<li><a href="'.$menu_info['url'].$row['name_alias'].'.html" '.$style.'>'.$row['name'].'</a></li>';
		}
	}
	?>
    </div>
</div>

<div style="clear:both; height:15px"></div>