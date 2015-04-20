<h3 class="title_user">Real time Orders:</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:20px">
    <tr class="title_forex">
        <th width="150">Pair of Currencies</th>
        <th align="left" width="220" style="padding-left:15px">Status</th>
        <th>Oders</th>
        <th>Entry Point</th>
        <th>Take Profit</th>
        <th>Stop Loss</th>
        <th width="180">Datetime</th>
    </tr>
    <?php
	$status = array(
		'0'=>'<span class="iconRealTime failure">Failure</span>',
		'1'=>'<span class="iconRealTime success">Success</span>',
		'2'=>'<span class="iconRealTime waiting">Waiting for Opportunity</span>',
		'3'=>'<span class="iconRealTime progressing">In Progressing</span>',
	);
    $data = $this->_model->_list_real_time($this->_config['limit_3']);
    foreach($data as $row){
        if($row['oders']==1) $oders='<span class="buy">&nbsp;</span>'; else $oders='<span class="sell">&nbsp;</span>';
        echo '<tr>
            <th>'.$row['currency'].'</th>
            <td>'.$status[$row['status_real_time']].'</td>
            <td>'.$oders.'</td>
            <td align="center">'.$row['entry_point'].'&nbsp;</td>
            <td align="center">'.$row['take_profit'].'&nbsp;</td>
            <td align="center">'.$row['stop_loss'].'&nbsp;</td>
			<td align="center">'.$this->_model->_view_date_time($row['datetime']).'</td>
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