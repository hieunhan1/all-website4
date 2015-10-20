<div class="container">
	<?php
	$limit=5;
	$select='`url`, `img`, `code`, `price`, `price_cost`';
    $dataH = $c->_model->_listMenuHome($lang);
	foreach($dataH as $rowH){
		echo '<h2 class="homeTitle"><a href="'.$rowH['url'].'" title="'.$rowH['name'].'">'.$rowH['name'].'</a></h2>
		<div class="boxHome">';
		$i=0;
		$data = $c->_model->_listDetailMenu('web_product', $rowH['id'], $limit, $select);
		foreach($data as $row){
			$i++;
			if($i%5 != 1) $style='productMargin'; else $style='';
			if($row['price_cost']==0) $price_cost=''; else $price_cost=number_format($row['price_cost'], 0, ',', '.').'đ';
			if($row['price']==0) $price='Liên hệ'; else $price=number_format($row['price'], 0, ',', '.').'đ';
			if($row['code']!='') $code=' - '.$row['code']; else $code='';
			echo '<div class="productBox productHome '.$style.'">
				<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'" class="link"><h3 class="h3">'.$row['name'].$code.'</h3></a>
				<div class="price"><span>'.$price_cost.'</span>'.$price.'</div>
			</div>';
		}
		echo '</div><div class="clear30"></div>';
	}
	?>
</div>