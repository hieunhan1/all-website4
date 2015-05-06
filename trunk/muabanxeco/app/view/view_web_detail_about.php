<?php include_once('view_web_navigator.php');?>
<div id="article" class="z-index-2">
    <div class="viewpost">
        <?php
        echo "<h1>{$row_detail['name']}</h1>";
        echo '<div style="font-size:110%">'.$row_detail['content'].'</div>';
        ?>
    </div>
</div>

<div id="right" class="z-index-2">
	<?php
    $data = $this->_model->_other_post_article($row_detail['id'], $current_menu['id']);
	if(count($data)!=0){
	?>
	<div id="thongtinmoi">
    	<div class="title">Thông tin bài viết</div>
        <?php
		foreach($data as $row){
			echo '<li class="item">
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h4>'.$row['name'].'</h4></a>
				<p>'.$row['description'].'</p>
			</li>';
		}
		?>
    </div>
    <?php }?>
    
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

<div class="clear_20px"></div>