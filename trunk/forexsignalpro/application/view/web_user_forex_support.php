<div id="ajax_forex">
<h3 class="title_user">Support and Resistance Points:</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:20px">
    <tr class="title_forex">
    	<th rowspan="2" width="140px">Pair Currencies</th>
    	<th rowspan="2" width="140px">PIVOT</th>
        <th colspan="3">Support</th>
        <th colspan="3">Resistance</th>
    </tr>
    <tr bgcolor="#d3ebf1">
    	<td align="center">S1</td>
    	<td align="center">S2</td>
    	<td align="center">S3</td>
    	<td align="center">R1</td>
    	<td align="center">R2</td>
    	<td align="center">R3</td>
    </tr>
    <?php
	$model = new modelForex;
    $data = $model->_webSupportResistance($config['limit_4']);
	foreach($data as $row){
		echo '<tr>
			<td align="center">'.$row['currency'].'</td>
			<td align="center">'.$row['pivot'].'</td>
			<td align="center">'.$row['support_s1'].'</td>
			<td align="center">'.$row['support_s2'].'</td>
			<td align="center">'.$row['support_s3'].'</td>
			<td align="center">'.$row['resistance_r1'].'</td>
			<td align="center">'.$row['resistance_r2'].'</td>
			<td align="center">'.$row['resistance_r3'].'</td>
		</tr>';
	}
	?>
</table>

<script type="text/javascript">
	$(document).ready(function(e) {
		function forex(){
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:"post",
				data:{forexSupport:1},
				cache:false,
				success: function(data){
					$("#ajax_forex").html(data);
					return true;
				}
			});
		}
		setTimeout(function(){ forex(); },10000);
	});
</script>
</div>