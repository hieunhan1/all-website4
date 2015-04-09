<div id="average">
    <h3 class="title_user">Average of Pair Currencies:</h3>
    <table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
        <tr bgcolor="#b6dde8">
            <th align="left">Name</th>
            <th align="left">Average</th>
        </tr>
        <?php
        $data = $this->_model->_list_currency();
        foreach($data as $row){
            echo '<tr><td>'.$row['name'].'</td> <td>'.$row['average'].'</td></tr>';
        }
        ?>
    </table>
</div>

<div id="support_resistance">
    <h3 class="title_user">Support and Resistance Points:</h3>
    <?php $data = $this->_model->_web_support_resistance(); ?>
    <table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
        <tr bgcolor="#b6dde8">
            <th align="left">Support</th>
            <th align="left">Resistance</th>
        </tr>
        <tr>
            <td>S1 = <?php echo $data[0]['support_s1']?></td>
            <td>R1 = <?php echo $data[0]['resistance_r1']?></td>
        </tr>
        <tr>
            <td>S2 = <?php echo $data[0]['support_s2']?></td>
            <td>R2 = <?php echo $data[0]['resistance_r2']?></td>
        </tr>
        <tr>
            <td>R3 = <?php echo $data[0]['support_r3']?></td>
            <td>R3 = <?php echo $data[0]['resistance_r3']?></td>
        </tr>
    </table>
</div>

<div class="clear_20px" style="margin-bottom:30px"></div>
<h3 class="title_user">Real time Orders:</h3>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table">
    <tr bgcolor="#b6dde8">
        <th align="left">Pair of Currencies</th>
        <th align="left">Oders</th>
        <th align="left">Entry Point</th>
        <th align="left">Take Profit</th>
        <th align="left">Stop Loss</th>
        <th align="left">Status</th>
    </tr>
    <?php
    $data = $this->_model->_list_real_time($this->_config['limit_3']);
    foreach($data as $row){
        if($row['oders']==1) $oders='BUY'; else $oders='SELL';
        if($row['status_real_time']==1) $status='In Progressing'; else $status='Out';
        echo '<tr>
            <td>'.$row['currency'].'</td>
            <td>'.$oders.'</td>
            <td>'.$row['entry_point'].'</td>
            <td>'.$row['take_profit'].'</td>
            <td>'.$row['stop_loss'].'</td>
            <td>'.$status.'</td>
        </tr>';
    }
    ?>
</table>
<div class="clear_20px" style="margin-bottom:30px"></div>
<script type="text/javascript">
	$(document).ready(function(e) {
		function forex(){
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:"post",
				data:{forex:1},
				cache:false,
				success: function(data){
					$("#ajax_forex").html(data);
					return true;
				}
			});
		}
		setInterval(function(){ forex(); },5000);
	});
</script>