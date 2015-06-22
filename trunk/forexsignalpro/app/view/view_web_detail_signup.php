<?php include_once('view_web_navigator.php');?>
<div class="viewpost">
    <?php
    echo "<h1>{$row_detail['name']}</h1>";
	$total = (int)($row_detail['price'] * (100 - $row_detail['discount'])/100);
    ?>
    <table width="70%" border="1" cellpadding="8" cellspacing="0" class="table" style="float:left; margin-top:30px; border:dashed 1px #CCC">
    	<tr style="color:#090; font-size:120%">
        	<th align="left">Description</th>
            <th width="80px">Price</th>
            <th width="80px">Discount</th>
            <th width="80px">Total</th>
        </tr>
        
       <tr>
            <td style="padding-left:20px"><?php echo $row_detail['name'];?></td>
            <td align="center">$<?php echo $row_detail['price'];?></td>
            <td align="center" style="color:#F00"><?php echo $row_detail['discount'];?>%</td>
            <td align="center" style="color:#00F; font-weight:bold">$<?php echo $total;?></td>
        </tr>
        
        <tr><td colspan="5">
        	<span style="width:auto; float:left; margin-right:20px"><img src="themes/website/img/perfectmoney.gif" alt="Perfect Money" style="height:60px; border:solid 1px #CCC; margin:10px; cursor:pointer" id="perfectmoney" /></span>
			<?php
            if($row_detail['payment_paypal']!=''){
				$style='style="display:none"';
			?>
            <div style="width:auto; float:left; margin-right:20px">
			<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                <input type="hidden" name="cmd" value="_s-xclick">
                <input type="hidden" name="hosted_button_id" value="<?php echo $row_detail['payment_paypal'];?>">
                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
                <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>
            </div>
			<!--<script src="https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=X4UEGCCN5DZPW"
                    data-button="buynow"
                    data-name="Product - 1 Year Subscription"
                    data-amount="10"
                    data-currency="USD"
                    data-period="Y"
                    data-callback="http://www.forexsignalpro.net/" 
                    data-cancel_return="http://www.forexsignalpro.net/payment/?status=cancel"
                    data-return="http://www.forexsignalpro.net/payment/?status=success" 
                    
            ></script>-->
            <?php }else $style='';?>
        </td></tr>
        <tr id="frmPerfectmoney" <?php echo $style;?>>
        	<td colspan="5">
            <form action="https://perfectmoney.is/api/step1.asp" method="POST">
                <input type="hidden" name="PAYEE_ACCOUNT" value="U7071279">
                <input type="hidden" name="PAYEE_NAME" value="Forex Signal">
                <input type="hidden" name="PAYMENT_UNITS" value="USD">
                <input type="hidden" name="PAYMENT_URL_METHOD" value="POST">
                <input type="hidden" name="NOPAYMENT_URL_METHOD" value="POST">
                <input type="hidden" name="SUGGESTED_MEMO" value="">
                <input type="hidden" name="STATUS_URL" value="forexsignalpro.net@gmail.com">
                <input type="hidden" name="PAYMENT_URL" value="http://www.forexsignalpro.net/payment/success/">
                <input type="hidden" name="NOPAYMENT_URL" value="http://www.forexsignalpro.net/payment/error/">
                <input type="hidden" name="PAYMENT_ID" value="<?php echo time();?>">
                <div id="frm_payment">
                    <p><span class="span">Name:</span><input type="text" name="name" value="" class="txt"><span id="name" class="error"></span></p>
                    <p><span class="span">Email:</span><input type="text" name="email" value="" class="txt"><span id="email" class="error"></span></p>
                    <input type="hidden" name="package_id" value="<?php echo $row_detail['id'];?>">
                    <input type="hidden" name="PAYMENT_AMOUNT" value="<?php echo $total;?>">
                    <input type="hidden" name="ip_address" value="<?php echo $_SERVER['REMOTE_ADDR'];?>">
                    <input type="hidden" name="BAGGAGE_FIELDS" value="name email package_id ip_address">
                    <p><span class="span">&nbsp;</span><input type="submit" name="PAYMENT_METHOD" value="Pay Now!" class="btn"></p>
                </div>
            </form>
            </td>
        </tr>
    </table>
    
    <div style="width:28%; float:right">
    	<h3>100% Satisfaction</h3>
        <p>As forex traders ourselves, we understand you may want to try our  forex signal service before deciding to fully subscribe.</p>
        <p>Monthly subscriptions can be cancelled at anytime if you are not satisfied.</p>
        <h3>ForexSignalPro.net Can Help!</h3>
        <p>Let us be your eyes to the forex market and alert you to possible trading opportunities as they occur.</p>
        <p>Proven track record: We were established in 1998. We have proudly kept track of our signal results and with integrity and honesty.</p>
        <p>Let us help you: Let us be your eyes to the forex market and alert you to possible trading opportunities as they occur.</p>
    </div>
    
    
    <div style="width:70%; float:left">
    	<p>Instant Access: After you signup you'll have instant access to the cloud based ForexSignalPro.net platform and you'll be able to setup your email and mobile phone for alerts. We will help Pro and Ultimate users who want to use the Trade Copier and Live Trading Room access.</p>
        <p style="font-weight:bold">Do you need help?<br />Email: <?php echo $this->_config['email'];?></p>
    </div>
    <br /><br />

</div>
<script type="text/javascript">
$(document).ready(function(e) {
	/*
	function check_package_id(){
		var id = $("select[name=package_id]").val();
		if(id=="") return false;
		var price = $("#" + id).attr("price");
		$("input[name=PAYMENT_AMOUNT]").val(price);
		return true;
	}
	check_package_id();
	$("select[name=package_id]").change(function(){
		check_package_id();
	});
	*/
	$("#perfectmoney").click(function(){
		$("#frmPerfectmoney").show(100);
		return true;
	});
	
	$("input[name=PAYMENT_METHOD]").click(function(){
		var email = check_email("input[name=email]", "#email", " <?php echo CONS_ERROR_EMAIL;?>");
		var name = check_text_length("input[name=name]", "#name", " input name", 2);
		/*var package_id = check_number("select[name=package_id]","#package_id"," select a subscription");*/
		if(email==false || name==false) return false;
	});
});
</script>