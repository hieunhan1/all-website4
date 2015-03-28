<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
    <?php
    echo "<h1>{$row_detail['name']}</h1>";
    ?>
    <table width="70%" border="1" cellpadding="8" cellspacing="0" class="table" style="float:left; margin-top:30px; border:dashed 1px #CCC">
    	<tr style="color:#090; font-size:120%">
        	<th align="left">Select a subscription</th>
            <th width="80px">Price</th>
            <th width="80px">Discount</th>
            <th width="80px">Total</th>
            <th width="100px">&nbsp;</th>
        </tr>
        
        <?php
        $data = $this->_model->_users_package($row_detail['id'], 8);
		foreach($data as $row){
			$total = $row['price'] * (100 - $row['discount'])/100;
			echo '<tr>
				<td style="padding-left:20px">'.$row['name'].'</td>
				<td align="center">$'.$row['price'].'</td>
				<td align="center" style="color:#F00">'.$row['discount'].'%</td>
				<td align="center" style="color:#00F; font-weight:bold">$'.(int)$total.'</td>
				<td align="center"><a href="'.$row['payment_paypal'].'"><img src="themes/website/img/btn_buynow.gif" alt="paypal" title="paypal" /></a></td>
			</tr>';
		}
		?>
    </table>
    
    <div style="width:28%; float:right">
    	<h3>100% Satisfaction</h3>
        <p>As forex traders ourselves, we understand you may want to try our  forex signal service before deciding to fully subscribe.</p>
        <p>Monthly subscriptions can be cancelled at anytime if you are not satisfied.</p>
        <h3>ForexSignal.com Can Help!</h3>
        <p>Let us be your eyes to the forex market and alert you to possible trading opportunities as they occur.</p>
        <p>Proven track record: We were established in 1998. We have proudly kept track of our signal results and with integrity and honesty.</p>
        <p>Let us help you: Let us be your eyes to the forex market and alert you to possible trading opportunities as they occur.</p>
    </div>
    
    
    <div style="width:70%; float:left">
    	<p>Instant Access: After you signup you'll have instant access to the cloud based ForexSignal.com platform and you'll be able to setup your email and mobile phone for alerts. We will help Pro and Ultimate users who want to use the Trade Copier and Live Trading Room access.</p>
        <p style="font-weight:bold">Do you need help?<br />Email: <?php echo $this->_config['email'];?></p>
    </div>
</div>