<?php $data_home = $this->_model->_list_menu_home_page($this->_lang);?>
<div id="homepage">
    <h2><?php echo $data_home[0]['name'];?></h2>
    <?php
	$i = 0;
    $data = $this->_model->_list_article_home_page($data_home[0]['id']);
	foreach($data as $row){
		$i++;
		if($i%3 != 1) $style = 'style="margin-left:33px"'; else $style='';
		echo '<div class="box_about" '.$style.'>
			<h3>'.$row['name'].'</h3>
			<p>'.$row['description'].'</p>
		</div>';
	}
	?>
    <div class="clear_20px"></div>
    
    <div class="box_new">
        <h3><?php echo $data_home[1]['name'];?></h3>
        <?php
		$data = $this->_model->_list_article_home_page($data_home[1]['id']);
		foreach($data as $row){
			echo '<div class="item bogoc_5px">
				<a href="'.$row['url'].'"><h4>'.$row['name'].'</h4></a>
				<p>February 25, 2015 09:24:00 PM ET</p>
			</div>';
		}
		?>
    </div>
    <div class="box_new_market">
    	<?php
		$i = 0;
		$item = '';
		$highlight = '';
        $data = $this->_model->_list_article_home_page($data_home[2]['id']);
		foreach($data as $row){
			$i++;
			$url_img = 'public/_thumbs/Images/articles/'.$row['img_avatar'];
			if(file_exists($url_img)) $url_img = '<img src="'.$url_img.'" alt="'.$row['name'].'" />';
			else $url_img = '<img src="'.CONS_IMAGE_DEFAULT.'" alt="'.$row['name'].'" />';
			
			if($i!=1){
				$item .= '<div class="item">
					<a href="'.$row['url'].'" title="'.$row['name'].'"><div class="img">'.$url_img.'</div><h4>'.$row['name'].'</h4></a>
					<p>February 25, 2015 09:24:00 PM ET</p>
				</div>';
			}else{
				$highlight .= '<div class="highlight">
					<a href="'.$row['url'].'" title="'.$row['name'].'"><div class="img">'.$url_img.'</div><h3>'.$row['name'].'</h3></a>
					<p>'.$row['description'].'</p>
				</div>';
			}
		}
		echo $highlight.'<div class="other"><div class="title">'.$data_home[2]['name'].'</div>'.$item.'</div>';
		?>
    </div>
    <div class="clear_20px"></div>
</div>