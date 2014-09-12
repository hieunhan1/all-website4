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
    
    <div id="sale_online">
        <?php
		$data_menu = $this->_model->_list_menu_parent($idMenu);
		$total = count($data_menu);
		if($total > 1){
			foreach($data_menu as $row_menu){
				$str_sale_online .= '<h3 class="sale_online_title">'.$row_menu['title'].'</h3>
				<div class="sale_online_box">';
				$i=0;
				$data = $this->_model->_web_sale_online($row_menu['id']);
				foreach($data as $row){
					$i++;
					if($i%4 != 1) $style='style="margin-left:10px"'; else $style='';
					if($row['yahoo']!='') $yahoo='<a href="ymsgr:sendIM?'.$row['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row['yahoo'].'&m=g&t=1" /></a>'; else $yahoo='';
					if($row['skype']=='') $skype=''; else $skype='<a href="Skype:'.$row['skype'].'?chat"><img src="http://mystatus.skype.com/bigclassic/'.$row['skype'].'" title="'.$row['name'].'" width="90" alt="'.$row['name'].'"></a>';
					$str_sale_online .= '<div class="sale_online_item" '.$style.'>
						<div class="sale_online_yahoo_skype">'.$yahoo.$skype.'</div>
						<div class="sale_online_name">'.$row['name'].'</div>
						<div class="sale_online_regency">'.$row['regency'].'</div>
						<div class="sale_online_phone_email">'.$row['phone'].'</div>
						<div class="sale_online_phone_email">'.$row['email'].'</div>
					</div>';
				}
				$str_sale_online .= '</div>';
			}
		}else{
			$i=0;
			$data = $this->_model->_web_sale_online($idMenu);
			foreach($data as $row){
				$i++;
				if($i%4 != 1) $style='style="margin-left:10px"'; else $style='';
				if($row['yahoo']!='') $yahoo='<a href="ymsgr:sendIM?'.$row['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row['yahoo'].'&m=g&t=1" /></a>'; else $yahoo='';
				if($row['skype']=='') $skype=''; else $skype='<a href="Skype:'.$row['skype'].'?chat"><img src="http://mystatus.skype.com/bigclassic/'.$row['skype'].'" title="'.$row['name'].'" width="90" alt="'.$row['name'].'"></a>';
				$str_sale_online .= '<div class="sale_online_item" '.$style.'>
					<div class="sale_online_yahoo_skype">'.$yahoo.$skype.'</div>
					<div class="sale_online_name">'.$row['name'].'</div>
					<div class="sale_online_regency">'.$row['regency'].'</div>
					<div class="sale_online_phone_email">'.$row['phone'].'</div>
					<div class="sale_online_phone_email">'.$row['email'].'</div>
				</div>';
			}
		}
		echo $str_sale_online;
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