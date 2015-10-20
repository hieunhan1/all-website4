<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
    $i++;
    if($i!=1) $icon='<span>&gt;&gt;</span>'; else $icon='';
    echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
    <h1><?php echo $current_menu['title'];?></h1>
    <h2 style="margin-bottom:20px"><?php echo $current_menu['description'];?></h2>
</div>

<div class="list_book">
    <?php
    $per_page=$this->_config['limit_2'];
    $startrow=($currentpage-1)*$per_page;
    $data = $this->_model->_list_web_product($idMenu, $per_page, $startrow, $totalrows);
    $i=0;
    foreach($data as $row){
        if($row['price_cost']!=0) $price_cost='<span>'.number_format($row['price_cost'],0,',','.').'đ</span> ';
		else $price_cost='';
		$i++;
		if($i%5 == 1) $style=''; else $style='style="margin-left:10px"';
		echo '<div class="box_book" '.$style.'>
			<div class="img_book"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
			<div class="price_book">'.$price_cost.number_format($row['price'],0,',','.').'đ</div>
			<h3><a href="'.$row['url'].'" title="'.$row['name'].'">'.$row['name'].'</a></h3>
			<div class="buy_book all_icon" idsp="'.$row['id'].'" alias="'.$row['name_alias'].'" style="background-position:30px -45px">đặt mua</div>
		</div>';
    }
    ?>
</div>

<div id="phantrang"><?php echo $this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $currentpage);?></div>