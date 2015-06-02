<div id="right">
	<?php
	$parent=0; $position=4;
	$dataLeft = $c->_model->_listMenu($lang, $parent, $position);
	
	if(count($dataLeft)){
		$title='<a href="'.$dataLeft[0]['url'].'" title="'.$dataLeft[0]['title'].'" class="title iconHot">'.$dataLeft[0]['name'].'</a>';
		$data = $c->_model->_listDetailMenu($dataLeft[0]['id'], 3);
		if(count($data)>0){
			echo '<div class="box">'.$title;
			foreach($data as $row){
				echo '<div class="item">
					<div class="img"><a href="'.$row['url'].'"><img src="'.$urlImg[2]['url_img_thumb'].$row['img'].'" alt="'.$row['name'].'" /></a></div>
					<a href="'.$row['url'].'" title="'.$row['name'].'"><h5>'.$row['name'].'</h5></a>
				</div>';
			}
			echo '</div>';
		}
	}
	
	if(isset($config['facebook']))
		echo '<div class="box">
			<div id="fb-root"></div>
			<script>(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/en_GB/all.js#xfbml=1";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, "script", "facebook-jssdk"));</script>
			<div class="fb-like-box" data-href="'.$config['facebook'].'" data-width="280" data-height="400"  data-show-faces="1" data-border-color="" data-stream="1" data-header="0" data-force-wall="false"></div>
		</div>';
	?>
    
    
</div>