<?php include_once('view_web_navigator.php');?>
<div class="viewpost content z-index-2">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#222"><?php echo $current_menu['description'];?></h2>
</div>

<div id="list_item" class="z-index-2" style="width:620px; float:left; margin-left:70px">
<?php
$per_page = $this->_config['limit_1'];
$startrow = ($current_menu['page_number']-1)*$per_page;
$data = $this->_model->_list_web_article($current_menu['id'], $per_page, $startrow, $totalrows);
if($totalrows>1){
	foreach($data as $row){
		$url_img = $current_menu['type_menu_img'].$row['img_avatar'];
		if($row['img_avatar']!='') $url_img = '<img src="'.$url_img.'" alt="'.$row['name'].'" />';
		else $url_img = '<img src="'.CONS_IMAGE_DEFAULT.'" alt="'.$row['name'].'" />';
		
		echo '<div class="article_box">
			<div class="img"><a href="'.$row['url'].'">'.$url_img.'</a></div>
			<a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
			<p>'.$row['description'].'</p>
			<div class="link">
				<a href="javascript:;" onclick="facebook_share(\''.CONS_BASE_URL.'/'.$row['url'].'\')" style="color:#222">Share facebook</a>
				<a href="'.$row['url'].'">View more..</a>
			</div>
		</div>';
	}
	$phantrang = '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $current_menu['page_number'], $totalpages).'</div>';
	if($totalpages>=$current_menu['page_number']) echo $phantrang; else echo '<p style="padding:10px 0px 100px 50px">This page does not exist.</p>';
}else if($totalrows==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
else echo '<p style="padding:10px 0px 100px 50px">Update...</p>';
?>
</div>

<div id="right" class="z-index-2" style="margin-top:0">
	<div id="thongtinmoi" style="padding-top:0">
    	<div class="title">Tuần này có gì HOT?</div>
        <div id="list_product">
        <?php
		$data = $this->_model->_other_product_hot();
		foreach($data as $row){
			echo '<div class="box-item" style="float:right; margin:10px 10px 10px 0">
				<div class="img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['img_avatar'].'" alt="'.$row['name'].'" /></a></div>
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
				<div class="buy bogoc_5px">Liên hệ</div>
			</div>';
		}
		?>
        </div>
        <div class="clear_1px"></div>
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