<div id="left">
    <div class="box">
    <?php
    $data = $c->_model->_listMenu($lang, 0, 4);
    foreach($data as $row){
        echo '<div class="title"><a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a></div>';
        $data2 = $c->_model->_listMenu($lang, $row['id']);
        foreach($data2 as $row2){
            echo '<div class="item allIcon"><a href="'.$row2['url'].'" title="'.$row2['title'].'">'.$row2['name'].'</a></div>';
        }
    }
    ?>
    </div>
</div>