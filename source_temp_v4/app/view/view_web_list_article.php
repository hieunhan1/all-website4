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
	<h1><?php echo $row_menu_one['title'];?></h1>
    <h2><?php echo $row_menu_one['metaDescription'];?></h2>
</div>

<div id="article_list">
	<div class="article_item">
    	<h3>Công dụng của mùng chuống muỗi</h3>
        <div class="article_item_date">Cập nhật ngày 04-10-2013 08:33</div>
        <div class="article_item_img"><img src="public/images/articles/about-home-mung-chong-muoi.png" alt="" /></div>
        <p>Sản phẩm mùng xua đuổi diệt muỗi ChamCham đáp ứng được tiêu chuẩn xuất khẩu là sản phẩm mùng ngủ chất lượng sản xuất theo dây chuyền, công nghệ đột phá.</p>
        <div class="article_item_link">
        	<a href="">Share</a>
            <a href="">Xem chi tiết</a>
        </div>
    </div>
</div>

</div>

<div style="clear:both; height:1px"></div>