<div class="content">
    <?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
	<div id="article" class="viewpost">
    	<?php
        echo "<h1>{$rowDetail['name']}</h1>";
		echo $rowDetail['content'];
		echo '<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
		<div style="width:auto; float:left"><g:plusone></g:plusone></div>';
		echo '<div class="fb-like" data-href="'.CONS_BASE_URL.$row['url'].'" data-width="450px" data-layout="standard" data-action="like" data-show-faces="true" data-share="true"></div>';
		
		if($rowDetail['other2']==1) include_once('web_form_dang_ky_khai_giang.php');
		
		$data = $cD->_model->_viewOtherPost($lang, $rowDetail['id'], $currentMenu['id']);
		if(count($data)>0){
			echo '<div class="clear20"></div><hr /><div id="other_post"><div class="title">Bài viết khác</div>';
			foreach($data as $row){
				echo '<li class="item"><a href="'.$row['url'].'" title="'.$row['name'].'" class="link">'.$row['name'].'</a></li>';
			}
			echo '</div>';
		}
		?>
    </div>
    
    <?php include_once('web_right.php');?>
    
    <div class="clear1"></div>
</div>