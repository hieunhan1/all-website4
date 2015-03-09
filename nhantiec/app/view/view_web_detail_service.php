<div id="content">
	<?php include_once('view_web_navigator.php');?>
    <div class="viewpost">
        <?php
        echo "<h1>{$row_detail['name']}</h1>";
        echo $row_detail['content'];
        ?>
    </div>
        
    <?php
    $data = $this->_model->_other_post_article($row_detail['id'],$current_menu['id']);
    if(count($data) > 0){
        $info_other = '';
        foreach($data as $row){
            $info_other .= '<p><span>&gt;&gt;</span><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a></p>';
        }
		echo '<div id="baiviet_khac"><h4>Bài viết khác</h4>'.$info_other.'</div>';
    }
    ?>
</div>
<div style="clear:both; height:20px"></div>