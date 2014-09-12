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
    
    <div id="service_list">
        <?php
		$arr_hotline_service = explode(',',$this->_config['hotline_service']);
		$arr_background = array(
			'style="color:#0099D2; background-position:0px -43px"',
			'style="color:#EB000B; background-position:5px -96px"',
			'style="color:#057F01; background-position:5px -145px"',
			'style="background-position:10px -194px"');
		
		$i=0;
		$arr_service = array();
		$data = $this->_model->_list_services($idMenu);
		foreach($data as $row){
			if($i%2 == 0){
				$style='float:left; ';
				$clear='';
			}else{
				$style='float:right; ';
				$clear='<div style="clear:both; height:20px"></div>';
			}
			
			$str_service = '';
			$str_service .= '<div class="service_list_box bogoc_5px" style="'.$style.'"><a href="'.$lang.'/'.$row['url'].'" title="'.$row['title'].'" class="service_list_title all_icon" '.$arr_background[$i].'><h3>'.$row['name'].'</h3></a>';
			$str_service .= '<div class="service_list_hotline">Hotline: '.$arr_hotline_service[$i].'</div>';
			
			$data2 = $this->_model->_list_services($row['id']);
			$total = count($data2);
			if($total>0){
				foreach($data2 as $row2){
					$str_service .= '<h4 class="service_list_item all_icon"><a href="'.$lang.'/'.$row2['url'].'" title="'.$row2['title'].'">'.$row2['name'].'</a></h4>';
					$data3 = $this->_model->_services_article($row2['id']);
					if( count($data3)>1 ){
						foreach($data3 as $row3){
							$str_service .= '<li class="all_icon"><a href="'.$lang.'/'.$row2['url'].$row3['name_alias'].'.html" title="'.$row3['name'].'">'.$row3['name'].'</a></li>';
						}
					}
				}
			}else{
				$data2 = $this->_model->_services_article($row['id']);
				foreach($data2 as $row2){
					$str_service .= '<h4 class="service_list_item all_icon"><a href="'.$lang.'/'.$row['url'].$row2['name_alias'].'.html" title="'.$row2['name'].'">'.$row2['name'].'</a></h4>';
				}
			}
			$str_service .= '</div>';
			$arr_service[] = $str_service;
			$i++;
		}
		echo $arr_service[0].$arr_service[1].$arr_service[3].$arr_service[2];
		?>
    </div>
</div>

<div id="left"><?php include_once('view_web_quick_booking.php');?></div>