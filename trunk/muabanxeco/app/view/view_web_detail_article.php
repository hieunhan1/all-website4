<?php include_once('view_web_navigator.php');?>
<div id="article" class="z-index-2">
    <div class="viewpost">
        <?php
        echo "<h1>{$row_detail['name']}</h1>";
        echo '<div style="font-size:110%">'.$row_detail['content'].'</div>';
        ?>
    </div>
        
    <?php
    $data = $this->_model->_other_post_article($row_detail['id'],$current_menu['id']);
    if(count($data) > 0){
        echo '<div id="other_post"><hr class="hr" /><div class="title">'.CONS_OTHER_POST.'</div>';
        foreach($data as $row){
            echo '<li class="li"><a href="'.$row['url'].'" title="'.$row['name'].'" class="link">'.$row['name'].'</a></li>';
        }
        echo '</div>';
    }
    ?>
</div>
<?php include_once('view_web_right.php');?>
<div class="clear_20px"></div>