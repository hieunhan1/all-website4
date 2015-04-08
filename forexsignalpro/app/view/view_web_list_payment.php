<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#666"><?php echo $current_menu['description'];?></h2>
    <?php
	echo $current_menu['page_number'].'<br />';
    echo $this->payment();
	?>
</div>
