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
    
    <div style="clear:both; height:10px"></div>
    <div class="viewpost">
		<?php
        echo "<h1>{$row_detail['name']}</h1>";
        echo $row_detail['content'];
        ?>
    </div>
    
    <?php
	$data = $this->_model->_other_post_article($row_detail['id'],$idMenu);
	if(count($data) > 0){
		echo '<div id="other_post"><hr /><div id="other_post_title">'.CONS_OTHER_POST.'</div>';
		foreach($data as $row){
			echo '<li class="all_icon"><a href="'.$current_menu['url'].$row['name_alias'].'.html">'.$row['name'].'</a></li>';
		}
		echo '</div>';
	}
	?>
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

<div style="clear:both; height:15px"></div>