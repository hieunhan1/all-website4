<div id="content">
	<?php include_once('view_web_navigator.php');?>
    <div class="viewpost">
        <?php
		$domain = 'www.nhantiec.vn';
        echo "<h1>{$row_detail['name']}</h1>";
		echo '<div style="text-align:center">'.$this->checks_video_youtube_vimeo($row_detail['url_code'], $domain).'</div>';
        echo $row_detail['content'];
        ?>
    </div>
        
    <?php
    $data = $this->_model->_other_post_video($row_detail['id'],$current_menu['id']);
    if(count($data) > 0){
        $info_other = '';
        foreach($data as $row){
            $info_other .= '<p><span>&gt;&gt;</span><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a></p>';
        }
		echo '<div id="baiviet_khac"><h4>Video khác</h4>'.$info_other.'</div>';
    }
    ?>
</div>
<div style="clear:both; height:20px"></div>