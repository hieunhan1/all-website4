<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#666"><?php echo $current_menu['description'];?></h2>
    <?php
    echo '<code>';
	print_r($_REQUEST);
    echo '</code>';
	?>
</div>
