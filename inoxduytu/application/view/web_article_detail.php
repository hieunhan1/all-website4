<div class="container">
	<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    <div id="article" class="viewpost">
        <?php
        echo "<h1>{$rowDetail['name']}</h1>";
        echo $rowDetail['content'];
		
        $data = $c->_model->_viewDetailOther($table, $rowDetail['id'], $currentMenu['id']);
        if(count($data)>0){
            echo '<div class="clear20"></div><hr /><div id="otherPost"><div class="titlePost">'.CONS_OTHER_POST.'</div>';
            foreach($data as $row){
                echo '<li class="itemPost"><a href="'.$row['url'].'" title="'.$row['name'].'" class="linkPost">'.$row['name'].'</a></li>';
            }
            echo '</div>';
        }
        ?>
    </div>

	<?php include_once('web_right.php');?>
</div>
<div class="clear30"></div>