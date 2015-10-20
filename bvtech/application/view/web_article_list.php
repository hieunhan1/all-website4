<div id="article">
<?php
$adInfo='';
if(isset($_SESSION['adminId']) && isset($_SESSION['adminName'])){
	$adInfo = '<div class="admin">
		<img src="themes/admin/img/edit.gif" class="adEdit" />
		<img src="themes/admin/img/delete.gif" class="adDel" />
	</div>';
}

$i = 0;
$perPage = $config['limit_1'];
$startRow = ($currentPage-1)*$perPage;
$data = $c->_model->_listDataTable('web_article', $currentMenu['id'], $totalRows, $perPage, $startRow);

if($totalRows>1){
	foreach($data as $row){
		if($row['img']!='') $img=$currentMenu['typeMenuImgThumb'].$row['img']; else $img=CONS_IMAGE_DEFAULT;
		echo '<div class="articleBox">
			<li id="'.$row['id'].'" name="'.$row['name'].'" table="web_article">
			<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[2]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$row['url'].'" title="'.$row['name'].'" class="link"><h3 class="title">'.$row['name'].'</h3></a>
			<div class="des">'.$row['description'].'</div>
			<a href="'.$row['url'].'" class="viewmore">'.CONS_READ_MORE.'</a>
			'.$adInfo.'</li>
		</div>';
	}
	
	echo '<div id="phantrang">';
	$offSet = 5;
	$totalPages = ceil($totalRows/$perPage);
	$data = $c->pagesList($currentMenu['url'], $totalRows, $offSet, $perPage, $currentPage);
	echo $data;
	echo '</div>';
}else{
	$tab = explode(',', $currentMenu['tab_id']);
	if($totalRows==1 && count($tab)==1 ) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
}
?>
</div>