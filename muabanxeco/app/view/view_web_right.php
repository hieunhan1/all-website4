<div id="right" class="z-index-2">
	<div id="thongtinmoi">
    	<div class="title">Thông tin bài viết mới</div>
        <?php
        $data = $this->_model->_list_article();
		foreach($data as $row){
			echo '<li class="item">
				<a href="'.$row['url'].'" title="'.$row['name'].'"><h4>'.$row['name'].'</h4></a>
				<p>'.$row['description'].'</p>
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
    <!--<div class="fb-comments" data-href="<?php echo CONS_BASE_URL.'/'.$row_detail['url'];?>" data-width="225" data-numposts="2" data-colorscheme="light"></div>-->
</div>