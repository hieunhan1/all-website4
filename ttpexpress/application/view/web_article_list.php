<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
<div id="homeType2" style="border:none; padding:0">
<?php
$typeId = $currentMenu['typeMenuId'];
$i = 0;
$perPage = $config['limit_1'];
$startRow = ($currentPage-1)*$perPage;
$data = $c->_model->_listDataTable($table, $currentMenu['id'], $totalRows, $perPage, $startRow);
if($totalRows>1){
	foreach($data as $row){
		if($row['img']!='') $img=$currentMenu['typeMenuImgThumb'].$row['img']; else $img=CONS_IMAGE_DEFAULT;
		echo '<div class="box">
			<a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="title" style="text-transform:none; border-bottom:dotted 5px #CCC">'.$row['name'].'</h3></a>
			<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[2]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
			<div class="info">'.$row['description'].'</div>
			<a href="'.$row['url'].'" class="link">'.CONS_READ_MORE.'</a>
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