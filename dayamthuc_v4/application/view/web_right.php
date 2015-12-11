<div id="right">
	<?php
    $position = 4;
	$data = $c->_model->_listSliderBanner($lang, $position);
	if(count($data)>0){
		echo '<div class="box" style="padding:2px 5px; background-color:#C00">';
		foreach($data as $row){
			echo '<a href="'.$row['url'].'" title="'.$row['name'].'" style="display:block; padding:3px 0"><img src="'.$urlImg[12]['url_img'].$row['img'].'" alt="'.$row['name'].'" style="max-width:100%" /></a>';
		}
		echo '</div>';
	}
	?>
    
	<?php
	$parent=0; $position=4;
	$dataLeft = $c->_model->_listMenu($lang, $parent, $position);
	if(count($dataLeft)>0){
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
	
		$str='';
		$title='<div class="clear20"></div><a href="'.$dataLeft[1]['url'].'" title="'.$dataLeft[1]['title'].'" class="title2 iconTop">'.$dataLeft[1]['name'].'</a>';
		$data = $c->_model->_listMenu($lang, $dataLeft[1]['id']);
		foreach($data as $row){
			$str.='<li><a href="'.$dataLeft[1]['url'].$row['id'].'/">'.$row['name'].'</a></li>';
		}
		echo '<div class="box2">'.$title.$str.'</div>';
	}
	
	echo '<div class="box">';
	include_once('web_support.php');
	echo '</div>';
	
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