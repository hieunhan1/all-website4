<div id="article" class="viewpost">
    <?php
	$adInfo='';
	if(isset($_SESSION['adminId']) && isset($_SESSION['adminName'])){
		$adInfo = '<div class="admin" style="clear:both; float:left">
			<a href="javascript:;" class="adEdit">Sửa thông tin <img src="themes/admin/img/edit.gif" /></a>
		</div>';
	}
	
    echo '<li id="'.$rowDetail['id'].'" name="'.$rowDetail['name'].'" table="web_article">'.$adInfo.'</li>
	<h1 id="h1">'.$rowDetail['name'].'</h1>';
    echo $rowDetail['content'];
    
    $data = $c->_model->_viewDetailOther($table, $rowDetail['id'], $currentMenu['id']);
    if(count($data)>0){
        echo '<div class="clear20"></div><hr /><div id="other_post"><div class="title">'.CONS_OTHER_POST.'</div>';
        foreach($data as $row){
            echo '<li class="item"><a href="'.$row['url'].'" title="'.$row['name'].'" class="link">'.$row['name'].'</a></li>';
        }
        echo '</div>';
    }
    ?>
</div><p style="clear:both; float:left"></p>