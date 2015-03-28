<div id="right">
	<?php include_once('view_web_slider.php');?>
    
    <div class="viewpost">
    	<?php
        $row = $this->_model->_home_about($idMenu);
		echo $row['content'];
		?>
    </div>
</div>
<div id="left"><?php include_once('view_web_quick_booking.php');?></div>
<div style="clear:both; height:15px"></div>

<div id="service_home" class="all_icon_bg bogoc_5px">
    <?php
	$arr_hotline_service = explode(',',$this->_config['hotline_service']);
    $arr_background = array(
		'style="color:#0099D2; background-position:0px -43px"',
		'style="color:#EB000B; background-position:5px -96px"',
		'style="color:#057F01; background-position:5px -145px"',
		'style="background-position:10px -194px"');
	
	$data_service = $this->_model->_home_menu_type($lang, 4);
	$str_service .= '<a href="'.$lang.'/'.$data_service['url'].'"><h2>'.$data_service['title'].'</h2></a>';
	
	$i=0;
	$data = $this->_model->_home_services($lang, $data_service['id']);
	foreach($data as $row){
		$str_service .= '<div class="service_home_box bogoc_5px"><a href="'.$lang.'/'.$row['url'].'" title="'.$row['title'].'" class="service_home_title all_icon" '.$arr_background[$i].'><h3>'.$row['name'].'</h3></a>';
		$str_service .= '<div class="service_home_hotline">Hotline: '.$arr_hotline_service[$i].'</div>';
		
		$data2 = $this->_model->_home_services($lang, $row['id']);
		$total = count($data2);
		if($total>0){
			foreach($data2 as $row2){
				$str_service .= '<h4 class="service_home_item all_icon"><a href="'.$lang.'/'.$row2['url'].'" title="'.$row2['title'].'">'.$row2['name'].'</a></h4>';
			}
		}else{
			$data2 = $this->_model->_home_services_article($row['id']);
			foreach($data2 as $row2){
				$str_service .= '<h4 class="service_home_item all_icon"><a href="'.$lang.'/'.$row['url'].$row2['name_alias'].'.html" title="'.$row2['name'].'">'.$row2['name'].'</a></h4>';
			}
		}
		$str_service .= '</div>';
		$i++;
	}
	echo $str_service;
	?>
</div>

<div id="news_home">
	<div class="news_home_title"><?php echo CONS_HOME_NEWS;?></div>
	<?php
	$data = $this->_model->_home_news_article($lang);
	foreach($data as $row){
		echo '<li class="news_home_item all_icon"><a href="'.$lang.'/'.$this->_model->_link_detail($row['menu_id']).$row['name_alias'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></li>';
	}
	?>
</div>

<div id="partner_home">
	<?php
	echo '<div class="news_home_title">'.CONS_HOME_PARTNER.'</div>';
    $data = $this->_model->_web_slider_banner(3,$lang);
	foreach($data as $row){
		echo '<li class="partner_home_item"><a href="'.$row['url'].'" title="'.$row['name'].'"><img src="'.CONS_IMAGES_SLIDER_BANNER.$row['url_img'].'" alt="'.$row['name'].'" /></a></li>';
	}
	?>
</div>

<div style="clear:both; height:30px"></div>