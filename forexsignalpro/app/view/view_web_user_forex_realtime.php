<h3 class="title_user">Real time Orders:</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:20px">
    <tr class="title_forex">
        <th align="left">Pair of Currencies</th>
        <th align="left">Oders</th>
        <th align="left">Entry Point</th>
        <th align="left">Take Profit</th>
        <th align="left">Stop Loss</th>
        <th align="left">Status</th>
    </tr>
    <?php
	$status = array(
		'0'=>'Failure',
		'1'=>'Success',
		'2'=>'Waiting for Opportunity',
		'3'=>'In Progressing',
	);
    $data = $this->_model->_list_real_time($this->_config['limit_3']);
    foreach($data as $row){
        if($row['oders']==1) $oders='BUY'; else $oders='SELL';
        echo '<tr>
            <td>'.$row['currency'].'</td>
            <td>'.$oders.'</td>
            <td>'.$row['entry_point'].'</td>
            <td>'.$row['take_profit'].'</td>
            <td>'.$row['stop_loss'].'</td>
            <td>'.$status[$row['status_real_time']].'</td>
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
				data:{forexRealTime:1},
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