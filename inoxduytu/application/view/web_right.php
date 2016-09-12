<div id="right">
	<?php
	$position=5; $limit=2; $select='`url`, `img`, `code`, `price`, `price_cost`';
    $dataR = $c->_model->_listMenuPosition($lang, $position);
	foreach($dataR as $rowR){
		echo '<div class="boxRight"><h3 class="h3Right">'.$rowR['name'].'</h3>';
		$data = $c->_model->_listDetailMenu('web_product', $rowR['id'], $limit, $select);
		foreach($data as $row){
			if($row['price_cost']==0) $price_cost=''; else $price_cost=number_format($row['price_cost'], 0, ',', '.').'đ';
			if($row['price']==0) $price='Liên hệ'; else $price=number_format($row['price'], 0, ',', '.').'đ';
			if($row['code']!='') $code=' - '.$row['code']; else $code='';
			echo '<div class="productBox productRight">
				<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].$code.'</h3></a>
				<div class="price"><span>'.$price_cost.'</span>'.$price.'</div>
			</div>';
		}
		echo '</div><div class="clear30"></div>';
	}
	?>
</div>