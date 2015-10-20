<div class="container">
	<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    
    <div id="product">
    	<div class="viewpost"><h1 style="border:none; margin:0; padding:0"><?php echo $currentMenu['title'];?></h1><h2><?php echo $currentMenu['description'];?></h2></div>
        <div class="listProduct">
        <?php
        $typeId = $currentMenu['typeMenuId'];
        $i = 0;
        $perPage = $config['limit_2'];
        $startRow = ($currentPage-1)*$perPage;
        $data = $c->_model->_listDataTable($table, $currentMenu['id'], $totalRows, $perPage, $startRow, '`code`, `price`, `price_cost`');
        if($totalRows>1){
            $i=0;
            foreach($data as $row){
                $i++;
                if($i%4!=1) $style='margin'; else $style='';
                if($row['price_cost']==0) $price_cost=''; else $price_cost=number_format($row['price_cost'], 0, ',', '.').'đ';
                if($row['price']!=0) $price=number_format($row['price'], 0, ',', '.').'đ'; else $price='Liên hệ';
				if($row['code']!='') $code=' - '.$row['code']; else $code='';
                echo '<div class="box '.$style.'">
                    <p class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></p>
                    <a href="'.$row['url'].'" class="link" title="'.$row['name'].'"><h3 class="title">'.$row['name'].$code.'</h3></a>
                    <p class="price"><span>'.$price_cost.'</span>'.$price.'</p>
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
    
    <div id="leftProduct">
    	<div class="title">Danh mục sản phẩm</div>
        <?php
        $i=0; $view=''; $parent=0; $position=4;
		$data = $c->_model->_listMenu($lang, $parent, $position);
		foreach($data as $row){
			if($row['id']!=$currentMenu['id']) $style=''; else $style='style="color:#F00"';
			echo '<div class="item"><a href="'.$row['url'].'" title="'.$row['title'].'" '.$style.'>'.$row['name'].'</a></div>';
			$data2 = $c->_model->_listMenu($lang, $row['id'], $position);
			foreach($data2 as $row2){
				if($row2['id']!=$currentMenu['id']) $style2=''; else $style2='style="color:#F00"';
				echo '<div class="item2"><a href="'.$row2['url'].'" title="'.$row2['title'].'" '.$style2.'>+ '.$row2['name'].'</a></div>';
			}
		}
		?>
    </div>
    
    <div class="clear20"></div>
</div>