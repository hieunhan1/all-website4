<?php $data_home = $this->_model->_list_menu_home_page($this->_lang);?>
<div id="homepage">
    <h2><?php echo $data_home[0]['name'];?></h2>
    <?php
	$i = 0;
    $data = $this->_model->_list_web_forex($this->_config['limit_0']);
	$total = count($data);
	foreach($data as $row){
		$i++;
		if($i%3 != 1) $style = 'style="margin-left:33px"'; else $style='';
		
		if($row['exactly']==1) $exactly='&nbsp; <span class="true bogoc_5px">True</span>';
		elseif($row['exactly']==0) $exactly='&nbsp; <span class="false bogoc_5px">False</span>';
		
		echo '<div class="box_about" '.$style.'>
			<h3>'.$row['name'].'</h3>
			<p class="p">'.strip_tags($row['description']).$exactly.'</p>
		</div>';
	}
	$data = $this->_model->_total_web_forex();
	$total_true = $data[0];
	$total = $data[1];
	$percent = ($total_true * 100) / $total;
	?>
    <div class="clear_1px"></div>
    <h3 id="total_forex">Currently We properly consulted <span><?php echo round($percent, 2);?>%</span> for <span><?php echo $total_true.' / '.$total;?></span>. <a href="signup/">Sign up today ForexSignalPro.Net</a></h3>
    <div class="clear_20px" style="margin-bottom:30px"></div>
    
    <?php
    //$data = $this->_model->_list_article_home_page($current_menu['id'], 1);
	//echo '<h2>'.$data[0]['name'].'</h2><div class="viewpost">'.$data[0]['content'].'</div>';
	?>
    <!--<div class="clear_20px" style="margin-bottom:30px"></div>-->
    
    <div id="timezone"><?php include_once('view_web_timezone.php');?></div>
    <div id="currency"><?php include_once('view_web_currency.php');?></div>
    
    <div class="clear_20px" style="margin-bottom:40px"></div>
    <div class="box_sign">
        <a href="signup/"><img src="themes/website/img/sign-up-now.jpg" alt="signup forex" />Registration forex to make money today</a>
    </div>
    
    <div class="box_new">
    	<?php
		$i = 0;
		$item = '';
		$highlight = '';
        $data = $this->_model->_list_article_home_page($data_home[1]['id'], 5);
		foreach($data as $row){
			$i++;
			$url_img = 'public/_thumbs/Images/articles/'.$row['img_avatar'];
			if($row['img_avatar']!='') $image = '<img src="'.$url_img.'" alt="'.$row['name'].'" />';
			else $image = '<img src="'.CONS_IMAGE_DEFAULT.'" alt="'.$row['name'].'" />';
			
			if($i!=1){
				$item .= '<div class="item">
					<a href="'.$row['url'].'" title="'.$row['name'].'"><div class="img">'.$image.'</div><h4>'.$row['name'].'</h4></a>
					<p>'.date("D d m Y, h:i a", $row['datetime']).'</p>
				</div>';
			}else{
				$highlight .= '<div class="highlight">
					<a href="'.$row['url'].'" title="'.$row['name'].'"><div class="img">'.$image.'</div><h3>'.$row['name'].'</h3></a>
					<p>'.$row['description'].'</p>
				</div>';
			}
		}
		echo $highlight.'<div class="other"><div class="title">'.$data_home[1]['name'].'</div>'.$item.'</div>';
		?>
    </div>
    <div class="clear_20px"></div>
</div>