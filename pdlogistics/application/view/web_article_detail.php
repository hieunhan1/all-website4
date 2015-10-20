<div class="container">
    <div id="article">
        <?php
        echo $c->viewNavigator($lang, $currentMenu['id']);
		echo '<div class="viewpost">';
        echo "<h1>{$rowDetail['name']}</h1>";
        echo $rowDetail['content'];
        echo '</div>';
		
        $data = $c->_model->_viewDetailOther('web_article', $rowDetail['id'], $currentMenu['id']);
        if(count($data)>0){
            echo '<div class="clear20"></div><hr /><div id="other_post"><div class="title">'.CONS_OTHER_POST.'</div>';
            foreach($data as $row){
                echo '<li class="item"><a href="'.$row['url'].'" title="'.$row['name'].'" class="link">'.$row['name'].'</a></li>';
            }
            echo '</div>';
        }
        ?>
    </div>
</div>
<div class="clear30"></div>