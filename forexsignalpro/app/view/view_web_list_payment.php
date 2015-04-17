<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
	<h1><?php echo $current_menu['title'];?></h1>
    <h2 style="color:#666"><?php echo $current_menu['description'];?></h2>
    <?php
	echo $this->_data.'<br />';
    echo $this->payment().'<br />';
	print_r($_POST);
	?>
</div>
