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
	<div id="other_service">
    <?php
	$data = $this->_model->_list_menu_parent($current_menu['root_id']);
	foreach($data as $row){
		$str_left_service .= '<div class="other_service_box">';
		if($idMenu!=$row['id']){
			$style='';
			$display='style="display:none"';
		}else{
			$style='style="color:#EA1D22; background-position:8px -96px"';
			$display='';
		}
		$str_left_service .= '<h4><a href="'.$lang.'/'.$row['url'].'" title="'.$row['title'].'" '.$style.'>'.$row['name'].'</a></h4>';
		
		$str_left_service_level_2 = '';
		$data2 = $this->_model->_list_menu_parent($row['id']);
		if(count($data2) > 0){
			foreach($data2 as $row2){
				if($idMenu!=$row2['id']){
					$style='';
				}else{
					$style='style="color:#EA1D22"';
					$display='';
				}
				$str_left_service_level_2 .= '<li class="all_icon"><a href="'.$lang.'/'.$row2['url'].'" title="'.$row2['title'].'" '.$style.'>'.$row2['name'].'</a></li>';
			}
		}else{
			$data2 = $this->_model->_services_article($row['id']);
			foreach($data2 as $row2){
				if($alias_detail!=$row2['name_alias']){
					$style='';
				}else{
					$style='style="color:#EA1D22"';
					$display='';
				}
				$str_left_service_level_2 .= '<li class="all_icon"><a href="'.$lang.'/'.$row['url'].$row2['name_alias'].'.html" title="'.$row2['name'].'" '.$style.'>'.$row2['name'].'</a></li>';
			}
		}
		$str_left_service .= "<div {$display}>{$str_left_service_level_2}</div>";
		$str_left_service .= '</div>';
	}
	echo $str_left_service;
	?>
    </div>
    
	<?php include_once('view_web_quick_booking.php');?>
</div>

<div style="clear:both; height:15px"></div>