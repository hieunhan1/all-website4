<div class="container">
	<?php echo $c->viewNavigator($lang, $currentMenu['id']);?>
    <div class="viewpost">
        <?php
        //print_r($_POST); print_r($_GET);
        if($arrUrl['currentPage']=='success'){
			include_once('web_payment_success.php');
		}else if($arrUrl['currentPage']=='error' || $arrUrl['currentPage']=='cancel'){
			include_once('web_payment_error.php');
		}else{
			echo '<h1>'.$currentMenu['title'].'</h1>';
		}
        ?>
    </div>
    <div class="clear30" style="margin-bottom:50px"></div>
</div>