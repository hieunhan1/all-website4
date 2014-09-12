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
    
    <div id="article_list">
        <?php
        $i = 0;
        $per_page=$this->_config['limit_1'];
        $startrow=($currentpage-1)*$per_page;
        $data = $this->_model->_list_web_article($idMenu, $per_page, $startrow, $totalrows);
        if(count($data)>1){
            foreach($data as $row){
                $i++;
                if($i%2==1) $style='style="float:left"'; else $style='style="float:right"';
                echo '<div class="article_item" '.$style.'>
                    <a href="'.$lang.'/'.$this->_model->_link_detail($row['menu_id']).$row['name_alias'].'.html"><h3>'.$row['name'].'</h3></a>
                    <div class="article_item_img"><img src="'.CONS_IMAGES_ARTICLES.$row['url_img'].'" alt="'.$row['name'].'" /></div>
                    <p>'.$row['description'].'</p>
                    <!--<div class="article_item_link">
                        <a href="javascript:;" onclick="facebook_share(\''.CONS_BASE_URL.'/'.$row['url'].'\')" style="color:#666">Share facebook</a>
                        <a href="'.$row['url'].'">Xem chi tiết</a>
                    </div>-->
                </div>';
            }
            echo '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $currentpage).'</div>';
        }else if(count($data)==1) header('location: '.CONS_BASE_URL.'/'.$lang.'/'.$this->_model->_link_detail($data[0]['menu_id']).$data[0]['name_alias'].'.html');
        else echo '<p style="padding:30px 50px 100px">Update...</p>';
        ?>
    </div>
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
				if($idMenu!=$row2['id']){
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

<div style="clear:both; height:1px"></div>