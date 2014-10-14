<div class="viewpost" style="margin:30px 0">
    <?php
    echo "<h1>{$row_detail['name']}</h1>";
    echo $row_detail['content'];
    ?>
</div>

<?php
$data = $this->_model->_other_post_article($row_detail['id'],$idMenu);
if(count($data) > 0){
    echo '<div id="other_post"><hr /><div id="other_post_title">Các khóa học khác</div>';
    foreach($data as $row){
        echo '<li class="all_icon"><a href="'.$current_menu['url'].$row['name_alias'].'.html">'.$row['name'].'</a></li>';
    }
    echo '</div>';
}
?>
<div style="clear:both; height:15px"></div>