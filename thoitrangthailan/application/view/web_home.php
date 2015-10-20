<div class="container">
	<?php
    $dataHome = $c->_home->_listMenuHome();
	foreach($dataHome as $rowHome){
		$i=0;
		echo '<h2 class="titleHome"><a href="'.$rowHome['url'].'">'.$rowHome['name'].'</a></h2><div class="listProduct">';
		$data = $c->_home->_listProductHome($rowHome['id']);
		foreach($data as $row){
			$i++;
			if($i%5!=1) $style='margin'; else $style='';
			if($row['price_cost']==0) $price_cost=''; else $price_cost=number_format($row['price_cost'], 0, ',', '.').'đ';
			if($row['price']!=0) $price=number_format($row['price'], 0, ',', '.').'đ'; else $price='Liên hệ';
			if($row['code']!='') $code=' - '.$row['code']; else $code='';
			echo '<div class="box '.$style.'">
				<p class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[3]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></p>
				<a href="'.$row['url'].'" class="link" title="'.$row['name'].'"><h3 class="title">'.$row['name'].$code.'</h3></a>
				<p class="price"><span>'.$price_cost.'</span>'.$price.'</p>
			</div>';
		}
		echo '</div><div class="clear30"></div>';
	}
	?>
</div>