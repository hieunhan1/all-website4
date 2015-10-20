<div class="container">
	<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    <div id="product">
        <?php
		if($rowDetail['price_cost']==0) $price_cost='';
		else $price_cost='<p id="priceCostProduct">'.number_format($rowDetail['price_cost'], 0, ',', '.').'đ</p>';
		
		if($rowDetail['price']!=0) $price=number_format($rowDetail['price'], 0, ',', '.').'đ';
		else $price='Liên hệ';
		$price='<p id="priceProduct">'.$price.'</p>';
		
		if($rowDetail['code']!='') $code='<p id="codeProduct">Mã sản phẩm: '.$rowDetail['code'].'</p>'; else $code='';
        echo '<div class="viewpost">
			<h1>'.$rowDetail['name'].'</h1>
			<div id="imgProduct"><img src="'.$urlImg[3]['url_img'].$rowDetail['img'].'" alt="'.$rowDetail['name'].'" /></div>
			<div id="moreProduct">'.$price_cost.$price.$code.$rowDetail['more'].'<p id="hotlineProduct">Đặt hàng qua điện thoại, gọi: <a href="tel:'.$config['hotline'].'">'.$config['hotline'].'</a></p></div>
			<div class="clear1"></div>'.$rowDetail['content'].'
		</div>
		<div class="clear30"></div>';
		
        $data = $cD->_model->_viewOtherPost($lang, $rowDetail['id'], $currentMenu['id']);
        if(count($data)>0){
            $i=0;
            echo '<hr /><div id="other_post" style="margin:0"><div class="title" style="padding:20px 0">'.CONS_OTHER_PRODUCT.'</div></div><div class="listProduct">';
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
			echo '</div>';
        }
        ?>
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
    
    <div class="clear30"></div>
    <div class="clear30"></div>
</div>