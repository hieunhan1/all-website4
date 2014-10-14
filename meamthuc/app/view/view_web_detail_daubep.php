<div id="navigator" style="margin-top:30px">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
    $i++;
    if($i!=1){
        $icon='<span>&gt;&gt;</span>';
    }else{
        $icon='';
    }
    echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div id="daubep_img"><img src="<?php echo $current_menu['type_img'].$row_detail['url_img'];?>" alt="<?php echo $row_detail['name'];?>" /></div>

<div id="daubep_content" class="viewpost">
	<?php
    echo "<h1>{$row_detail['name']}</h1><h3>{$row_detail['working']}</h3>";
    echo $row_detail['content'];
	if($row_detail['code_video']!='') echo '<div id="daubep_video">'.$this->checks_video_youtube_vimeo($row_detail['code_video']).'</div>';
    ?>
</div>

<div style="clear:both; height:30px"></div>