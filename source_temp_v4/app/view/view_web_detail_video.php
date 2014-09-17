<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
	$i++;
	if($i!=1) $icon='<span>&gt;&gt;</span>'; else $icon='';
	echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
	<?php
    echo "<h1>{$row_detail['name']}</h1>";
	echo '<div style="text-align:center"><iframe src="http://www.youtube.com/embed/'.$row_detail['url_video'].'?autoplay=1&origin='.CONS_BASE_URL.'&amp;rel=0" frameborder="0" width="650" height="450"></iframe></div>';
	echo $row_detail['content'];
	?>
</div>
	
<?php
$data = $this->_model->_other_post_video($row_detail['id'],$idMenu);
if(count($data) > 0){
	echo '<div id="other_post"><hr /><div id="other_post_title">Video khác</div>';
	foreach($data as $row){
		echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
	}
	echo '</div>';
}
?>
