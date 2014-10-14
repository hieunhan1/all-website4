<div class="viewpost" style="margin:30px 0">
    <h1><?php echo $current_menu['title'];?></h1>
</div>

<?php
$i = 0;
$str = '<div class="home_box_daotao"><h2>Các chương trình đào tạo</h2><div class="home_box_daotao">';
$data = $this->_model->_home_list_item($idMenu, 50);
foreach($data as $row){
	$i++;
	if($i%2==1) $style='style="float:left"'; else $style='style="float:right"';
	$str .= '<div class="home_box_daotao_item" '.$style.'>
	<a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
	<p>'.$row['description'].'</p></div>';
}
$str .= '<div class="clear_1px"></div></div></div>';
echo $str;
?>
<div style="clear:both; height:50px"></div>