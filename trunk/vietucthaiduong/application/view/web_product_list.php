<div class="container">
	<div id="product">
		<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
        <div id="homeType2" style="border:none; padding:0">
            <?php
            $typeId = $currentMenu['typeMenuId'];
            $i = 0;
            $perPage = $config['limit_1'];
            $startRow = ($currentPage-1)*$perPage;
            $data = $c->_model->_listDataTable($table, $currentMenu['id'], $totalRows, $perPage, $startRow);
            if($totalRows>1){
                foreach($data as $row){
                    $i++;
                    if($i%3 != 1) $style='margin'; else $style='';
                    echo '<div class="box '.$style.'">
                        <div class="img"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></div>
                        <a href="'.$row['url'].'" title="'.$row['name'].'"><h3 class="h3">'.$row['name'].'</h3></a>
                        <a href="'.$row['url'].'" class="link">Xem chi tiết</a>
                    </div>';
                }
                
                echo '<div id="phantrang">';
                $offSet = 5;
                $totalPages = ceil($totalRows/$perPage);
                $data = $c->pagesList($currentMenu['url'], $totalRows, $offSet, $perPage, $currentPage);
                echo $data;
                echo '</div>';
            }else if($totalRows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
            else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
            ?>
        </div>
    </div>
    
    <?php include_once('web_left.php');?>
</div>
<div class="clear30"></div>