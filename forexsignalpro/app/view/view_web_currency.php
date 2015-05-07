<?php
$str='';
$script='';
$data = $this->_model->_list_currency();
foreach($data as $row){
	$str .= '<tbody id="'.$row['name'].'"></tbody>';
	$script .= 'setInterval(function(){ autoCurrency("'.$row['name'].'") }, 15000);';
}
?>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:25px; border:solid 1px #CCC">
	<tr bgcolor="#FFFF99"><th colspan="5" style="font-size:120%">Live Quotes</th></tr>
    <tr bgcolor="#EEE">
    	<th>&nbsp;</th>
        <th>Ticker</th>
    	<th>Bid</th>
    	<th>Ask</th>
    	<th>Spread</th>
    </tr>
    <tr>
    	<?php echo $str;?>
    </tr>
</table>
<script type="text/javascript">
	$(document).ready(function(e) {
        function autoCurrency(currency){
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:'post',
				data:{autoCurrency:currency},
				cache:false,
				success: function(data){
					$("#" + currency).html(data);
				}
			});
		}
		<?php echo $script;?>
    });
</script>