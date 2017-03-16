<footer>
	<div class="container">
    	<div id="run_top">TOP</div>
        <div class="clear1"></div>
        <div class="info">
            <h2><?php echo $config['sitename'];?></h2>
            <p><?php echo CONS_CONTACT_ADDRESS.': '.$config['address'];?></p>
            <p><?php echo CONS_CONTACT_PHONE.': <a href="tel:'.$config['tel'].'">'.$config['tel'].'</a>';?></p>
            <p>Email: <a href="mailto:<?php echo $config['email'];?>"><?php echo $config['email'];?></a></p>
        </div>
        <div id="social">
		<?php
			$parent=0; $position=6;
			$data = $c->_model->_listMenu($lang, $parent, $position);
			foreach($data as $row){
				echo '<a href="'.$row['url'].'" title="'.$row['title'].'" target="_blank"><img src="'.$urlImg[11]['url_img'].$row['img'].'" alt="'.$row['name'].'" /></a>';
			}
			?>
        </div>
        <div id="copyright" style="text-align: right;">
			<p><?php echo $config['copyright'];?></p>
            <p class="clear10"></p>
            <p class="dmca">
                <a href="http://www.dmca.com/Protection/Status.aspx?ID=24f1a2ba-ab11-4ae5-b563-b114d4f34470" title="DMCA.com Protection Status" class="dmca-badge" target="_blank"> <img src="//images.dmca.com/Badges/dmca_protected_6_120.png?ID=24f1a2ba-ab11-4ae5-b563-b114d4f34470" alt="DMCA.com Protection Status"></a> <script src="//images.dmca.com/Badges/DMCABadgeHelper.min.js"> </script>
            </p>
        </div>
        <div class="clear1"></div>
        
        <div id="tagsALl">
			<?php
            $data = $c->_model->_listTagsKeyword($lang);
			foreach($data as $row) echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            ?>
        </div>
    </div>
</footer>