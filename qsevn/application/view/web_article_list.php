<div class="content">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    
    <div id="article">
	<?php
	$typeId = $currentMenu['typeMenuId'];
	$i = 0;
	$perPage = $config['limit_1'];
	$startRow = ($currentPage-1)*$perPage;
	$data = $c->_model->_listDataTable($table, $currentMenu['id'], $totalRows, $perPage, $startRow);
	if($totalRows>1){
		foreach($data as $row){
			if($row['img']!='') $img=$currentMenu['typeMenuImgThumb'].$row['img']; else $img=CONS_IMAGE_DEFAULT;
			echo '<div class="articleBox">
				<a href="'.$row['url'].'" title="'.$row['name'].'" class="link"><h3 class="title">'.$row['name'].'</h3></a>
				<div class="img"><a href="'.$row['url'].'"><img src="'.$img.'" alt="'.$row['name'].'" /></a></div>
				<div class="des">'.$row['description'].'</div>
				<a href="'.$row['url'].'" class="viewmore">Xem chi tiết</a>
				<div class="clear1"></div>
			</div>';
		}
		
		echo '<div id="phantrang">';
		$offSet = 5;
		$totalPages = ceil($totalRows/$perPage);
		$data = $c->pagesList($currentMenu['url'], $totalRows, $offSet, $perPage, $currentPage);
		echo $data;
		echo '</div>';
	}else if($totalRows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
	else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
	?>
    </div>
    
    <?php include_once('web_right.php');?>
    
    <div class="clear1"></div>
</div>