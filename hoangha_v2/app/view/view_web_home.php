<div id="left">
	<div id="quick_booking" class="all_icon_bg bogoc_5px">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
          	<td colspan="2" class="titleQuickBooking">Quick booking</td>
          </tr>
          <tr>
          	<td valign="top" width="60">Name</td>
          	<td><input type="text" name="name" class="txtQuickBooking bogoc_5px" /></td>
          </tr>
          <tr>
          	<td valign="top">Address</td>
          	<td><input type="text" name="address" class="txtQuickBooking bogoc_5px" /></td>
          </tr>
          <tr>
          	<td valign="top">Phone</td>
          	<td><input type="text" name="phone" class="txtQuickBooking bogoc_5px" /></td>
          </tr>
          <tr>
          	<td valign="top">Message</td>
          	<td><textarea name="message" class="txtareaQuickBooking bogoc_5px"></textarea></td>
          </tr>
          <tr>
          	<td>&nbsp;</td>
          	<td><input type="button" name="btnQuickBooking" value="Send" class="btnQuickBooking bogoc_5px all_icon_bg" /></td>
          </tr>
        </table>
    </div>
    
    <div id="call" class="all_icon_bg bogoc_5px"></div>
</div>

<div id="right">
	<?php include_once('view_web_slider.php');?>
    
    <div class="viewpost">
    	<?php
        $row = $this->_model->_home_about($idMenu);
		echo $row['content'];
		?>
    </div>
</div>
<div style="clear:both; height:15px"></div>

<div id="service_home" class="all_icon_bg bogoc_5px">
    <?php
	$arr_hotline_service = explode(',',$this->_config['hotline_service']);
    $arr_background = array(
		'style="color:#0099D2; background-position:0px -43px"',
		'style="color:#EB000B; background-position:5px -96px"',
		'style="color:#057F01; background-position:5px -145px"',
		'style="background-position:10px -194px"');
	
	$data_service = $this->_model->_home_menu_type(4);
	$str_service .= '<a href="'.$lang.'/'.$data_service['url'].'"><h2>'.$data_service['title'].'</h2></a>';
	
	$i=0;
	$data = $this->_model->_home_services($data_service['id']);
	foreach($data as $row){
		$str_service .= '<div class="service_home_box bogoc_5px"><a href="'.$lang.'/'.$row['url'].'" class="service_home_title all_icon" '.$arr_background[$i].'><h3>'.$row['name'].'</h3></a>';
		$str_service .= '<div class="service_home_hotline">Hotline: '.$arr_hotline_service[$i].'</div>';
		
		$data2 = $this->_model->_home_services($row['id']);
		$total = count($data2);
		if($total>0){
			foreach($data2 as $row2){
				$str_service .= '<h4 class="service_home_item all_icon"><a href="'.$lang.'/'.$row2['url'].'">'.$row2['name'].'</a></h4>';
			}
		}else{
			$data2 = $this->_model->_home_services_article($row['id']);
			foreach($data2 as $row2){
				$str_service .= '<h4 class="service_home_item all_icon"><a href="'.$lang.'/'.$row['url'].$row2['name_alias'].'.html">'.$row2['name'].'</a></h4>';
			}
		}
		$str_service .= '</div>';
		$i++;
	}
	echo $str_service;
	?>
</div>

<div id="news_home">
	<?php
    $data_news = $this->_model->_home_menu_type(2);
	echo '<div class="news_home_title"><a href="'.$lang.'/'.$data_news['url'].'">'.$data_news['name'].'</a></div>';
	
	$data = $this->_model->_home_news_article($data_news['id']);
	foreach($data as $row){
		echo '<li class="news_home_item all_icon"><a href="'.$lang.'/'.$data_news['url'].$row['name_alias'].'.html">'.$row['name'].'</a></li>';
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