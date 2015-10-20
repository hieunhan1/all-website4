<?php
$data = $c->_model->_listDetailTab($currentMenu['id']);
if(count($data)>0){
	$row = $data[0];
?>
    <div id="article" class="viewpost">
        <?php
        $adInfo='';
        if(isset($_SESSION['adminId']) && isset($_SESSION['adminName'])){
            $adInfo = '<div class="admin" style="clear:both; float:left">
                <a href="javascript:;" class="adEdit">Sửa thông tin <img src="themes/admin/img/edit.gif" /></a>
            </div>';
        }
        
        echo '<li id="'.$row['id'].'" name="'.$row['name'].'" table="web_article">'.$adInfo.'</li>
        <h1 id="h1">'.$row['name'].'</h1>';
        echo $row['content'];
        ?>
    </div><p style="clear:both; float:left"></p>
<?php } ?>