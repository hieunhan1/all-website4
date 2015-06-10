<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
<div id="homeType2" style="border:none; padding:0">
	<div class="viewpost">
    	<h1><?php echo $currentMenu['title'];?></h1>
        <h2><?php echo $currentMenu['description'];?></h2>
    </div>
<?php
$typeId = $currentMenu['typeMenuId'];
$i = 0;
$perPage = $config['limit_3'];
$startRow = ($currentPage-1)*$perPage;
$data = $c->_model->_listDataTableCustom($table, $currentMenu['id'], $totalRows, $perPage, $startRow);
if($totalRows>0){
	echo '<div id="photos"><ul>';
	foreach($data as $row){
		echo '<li><p class="img"><a class="fancybox" href="'.$urlImg[5]['url_img'].$row['img'].'" data-fancybox-group="gallery" title="'.$row['name'].'"><img src="'.$urlImg[5]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></p></li>';
	}
	
	echo '</ul></div>
    <div class="clear1"></div>
    <link rel="stylesheet" type="text/css" href="js/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
    <script type="text/javascript" src="js/extension/source/jquery.fancybox.js?v=2.1.5"></script>
	<script type="text/javascript" charset="utf-8"> $(document).ready(function(){ $(".fancybox").fancybox(); }); </script>
	<div id="phantrang">';
	$offSet = 5;
	$totalPages = ceil($totalRows/$perPage);
	$data = $c->pagesList($currentMenu['url'], $totalRows, $offSet, $perPage, $currentPage);
	echo $data;
	echo '</div>';
}else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
?>
</div>

<?php include_once('web_right.php');?>

<div class="clear20"></div>
<div class="clear20"></div>