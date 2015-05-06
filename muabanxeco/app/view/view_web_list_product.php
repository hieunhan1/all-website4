<?php include_once('view_web_navigator.php');?>
<div class="viewpost content z-index-2">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#222"><?php echo $current_menu['description'];?></h2>
</div>

<div id="list_product" class="z-index-2" style="width:650px; float:left; margin-left:70px">
<?php
$i=0;
$per_page = $this->_config['limit_2'];
$startrow = ($current_menu['page_number']-1)*$per_page;
$data = $this->_model->_list_web_product($current_menu['id'], $per_page, $startrow, $totalrows);
if($totalrows>1){
	foreach($data as $row){
		$i++;
		if($i%3 != 1) $style=' margin'; else $style='';
		echo '<div class="box-item'.$style.'">
			<div class="img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" /></a></div>
			<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
			<div class="buy bogoc_5px">Liên hệ</div>
		</div>';
	}
	$phantrang = '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
	if($totalpages>=$current_menu['page_number']) echo $phantrang; else echo '<p style="padding:10px 0px 100px 50px">This page does not exist.</p>';
}else if($totalrows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
?>
</div>

<div id="right" class="z-index-2">
	<div id="thongtinmoi" style="padding-top:0">
    	<div class="title">Danh mục mua bán</div>
        <?php
		$parent=3;
		$position=2;
        $data = $this->_model->_web_menu($this->_lang, $parent, $position);
		foreach($data as $row){
			if($current_menu['id']!=$row['id']) $style=''; else $style=' style="color:#FF0"';
			echo '<li class="item" style="font-size:110%; padding-left:10px">
				<a href="'.$row['url'].'" title="'.$row['name'].'" '.$style.'><h4>- &nbsp; '.$row['name'].'</h4></a>
			</li>';
		}
		?>
    </div>
    
    <div id="social_facebook">
    	<div id="fb-root"></div>
		<script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        
        <div class="fb-like" data-href="<?php echo $this->_config['link_facebook'];?>" data-width="225px" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>
    </div>
</div>

<div class="clear_1px"></div>