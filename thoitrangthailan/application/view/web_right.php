<div id="right">
    <?php
	$parent=0; $position=5;
	$dataLeft = $c->_model->_listMenu($lang, $parent, $position);
	echo '<h2 class="h2">'.$dataLeft[0]['name'].'</h2><div class="listProduct">';
	
	$r = new modelHome;
	$data = $r->_listProductHome($dataLeft[0]['id'], 4);
	foreach($data as $row){
		if($row['price_cost']==0) $price_cost=''; else $price_cost=number_format($row['price_cost'], 0, ',', '.').'đ';
		if($row['price']!=0) $price=number_format($row['price'], 0, ',', '.').'đ'; else $price='Liên hệ';
		echo '<div class="box">
			<p class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></p>
			<a href="'.$row['url'].'" class="link" title="'.$row['name'].'"><h3 class="title">'.$row['name'].'</h3></a>
			<p class="price"><span>'.$price_cost.'</span>'.$price.'</p>
		</div>';
	}
	echo '</div>';
	?>
</div>