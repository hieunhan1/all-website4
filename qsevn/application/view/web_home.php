<div id="homeType1" class="content">
	<?php
	$i=0;
    $data = $c->_home->_listMenuHome($currentMenu['id']);
	foreach($data as $row){
		$i++;
		if($i%3 != 1) $style=' margin'; else $style='';
		echo '<div class="box'.$style.'">
			<h2 class="title">'.$row['name'].'</h2>
			<div class="info">'.$row['description'].'</div>
			<a href="'.$row['url'].'" title="'.$row['title'].'" class="link allIcon">View more</a>
		</div>';
	}
	?>
</div>

<div id="homeType2" class="content">
	<?php
    $data = $c->_home->_listDetailHome($currentMenu['id']);
	if(count($data)!=0){
	?>
        <div class="box1">
            <h3 class="title"><a href="<?php echo $data[0]['url'];?>" title="<?php echo $data[0]['name'];?>"><?php echo $data[0]['name'];?></a></h3>
            <div class="img"><a href="<?php echo $data[0]['url'];?>"><img src="<?php echo $urlImg[2]['url_img_thumb'].$data[0]['img'];?>" alt="<?php echo $data[0]['name'];?>" /></a></div>
            <div class="info"><?php echo $data[0]['description'];?></div>
            <a href="<?php echo $data[0]['url'];?>" class="link">View more</a>
        </div>
    <?php }?>
    
    <div class="box2">
    	<h3 class="title">Contact</h3>
        <p>Please call us: <span class="phone"><?php echo $config['hotline'];?></span></p>
        <p>Email: <?php echo $config['email'];?></p>
        <a href="contact/" class="form">OR contact form</a>
    </div>
</div>