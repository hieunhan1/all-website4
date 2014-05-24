<?php $menu = $this->bv ->menu($this->lang); ?>
<ul id="nav">
	<?php
    foreach($menu as $row){
		echo '<li><a href="baiviet/cat/'.$row['idloai'].'/" style="color:#FF0">'.$row['tenloai'].'</a></li>';
	}
	?>
</ul>