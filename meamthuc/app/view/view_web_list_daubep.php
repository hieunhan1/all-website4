<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
    $i++;
    if($i!=1){
        $icon='<span>&gt;&gt;</span>';
    }else{
        $icon='';
    }
    echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
    <h1><?php echo $current_menu['title'];?></h1>
    <h2 style="margin-bottom:20px"><?php echo $current_menu['description'];?></h2>
</div>

<div id="article_list">
    <?php
    $i = 0;
    $per_page=$this->_config['limit_4'];
    $startrow=($currentpage-1)*$per_page;
    $data = $this->_model->_list_web_daubep($idMenu, $per_page, $startrow, $totalrows);
	if(count($data)>0){
		$str = '<div class="home_box_list">';
		foreach($data as $row){
			$i++;
			if($i%4!=1) $style='style="margin-left:22px"'; else $style='';
			$str .= '<div class="home_box_list_item" '.$style.'>
				<div class="home_box_list_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_CHEFS_THUMBS.$row['url_img'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
				<p>'.$row['working'].'</p>
			</div>';
		}
		$str .= '<div class="clear_1px"></div></div>';
		echo $str.'<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $currentpage).'</div>';
    }else echo '<p style="padding:30px 50px 100px">Update...</p>';
    ?>
</div>