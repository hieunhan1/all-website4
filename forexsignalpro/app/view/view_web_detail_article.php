<?php include_once('view_web_navigator.php');?>
<div id="article">
    <div class="viewpost">
        <?php
        echo "<h1>{$row_detail['name']}</h1>";
        echo $row_detail['content'];
        ?>
    </div>
        
    <?php
    $data = $this->_model->_other_post_article($row_detail['id'],$current_menu['id']);
    if(count($data) > 0){
        echo '<div id="other_post"><hr /><div>'.CONS_OTHER_POST.'</div>';
        foreach($data as $row){
            echo '<li><a href="'.$current_menu['url'].$row['name_alias'].'.html">'.$row['name'].'</a></li>';
        }
        echo '</div>';
    }
    ?>
</div>
<?php include_once('view_web_right.php');?>
<div class="clear_20px"></div>