<?php
//print_r($_SESSION);
if(isset($_POST['order_sp'])){
	$this->order_sp();
	echo '<script>
	$(document).ready(function(){
		$("#cart_icon").html("'.count($_SESSION['list_order_sp_name']).'");
	});
	</script>';
}


?>