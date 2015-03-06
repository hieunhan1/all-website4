<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#666"><?php echo $current_menu['description'];?></h2>
</div>
<div id="article">
	<?php
	$i = 0;//print_r($current_menu);
    $per_page = $this->_config['limit_1'];
    $startrow = ($current_menu['page_number']-1)*$per_page;
    $data = $this->_model->_list_web_article($current_menu['id'], $per_page, $startrow, $totalrows);
	if($totalrows>1){
		foreach($data as $row){
			$i++;
			if($i%2==1) $style='style="float:left"'; else $style='style="float:right"';
			
			$url_img = $current_menu['type_menu_img'].$row['img_avatar'];
			if(file_exists($url_img)) $url_img = '<img src="'.$url_img.'" alt="'.$row['name'].'" />';
			else $url_img = '<img src="'.CONS_IMAGE_DEFAULT.'" alt="'.$row['name'].'" />';
			
			echo '<div class="article_box" '.$style.'>
				<a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
				<div class="date">Cập nhật ngày '.date('d-m-Y H:i', $row['datetime']).'</div>
				<div class="img"><a href="'.$row['url'].'">'.$url_img.'</a></div>
				<p>'.$row['description'].'</p>
				<div class="link">
					<a href="javascript:;" onclick="facebook_share(\''.CONS_BASE_URL.'/'.$row['url'].'\')" style="color:#666">Share facebook</a>
					<a href="'.$row['url'].'">Xem chi tiết</a>
				</div>
			</div>';
		}
		$phantrang = '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
		if($totalpages>=$current_menu['page_number']) echo $phantrang; else echo '<p style="padding:10px 0px 100px 50px">This page does not exist.</p>';
	}else if($totalrows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
	else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
    ?>
</div>