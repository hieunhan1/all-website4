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
	echo '<div class="article_item_date">Cập nhật ngày '.date('d-m-Y H:i:s', strtotime($row_detail['ngay_dang'])).'</div>';
	echo $row_detail['content'];
	
	$data = $this->_model->_other_post_article($row_detail['id'],$idMenu);
	foreach($data as $row){
		echo '<a href="">'.$row['name'].'</a><br />';
	}
	?>
</div>


<div id="other">
	<?php echo $other_post;?>
</div>