<?php
date_default_timezone_set('UTC');
$timeStatus = date('H');

//$idTimeZone='381'; // 315 - 334 - 152 - 310 - 280
if(!isset($idTimeZone)){
	$idTimeZone = '417'; //id UTC
}

$data = $this->_model->_list_time_zone($idTimeZone);
$nameTimeZone = $data[0]['name'];
$timezone = $data[0]['timezone'];

date_default_timezone_set($nameTimeZone);

$m = explode(':', $timezone);
$hour = $m[0]; settype($hour, "int");
$minute = $m[1]; settype($minute, "int");

$hour = $hour*3600;
$minute = $minute*60;

$strtotime = strtotime(date('d-m-Y'));
?>
<div id="loading"><img src="themes/website/img/loader.gif" alt="loader" /></div>
<table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="line-height:25px; border:solid 1px #CCC">
	<thead>
        <tr bgcolor="#FFFF99"><th colspan="6" style="font-size:120%">Forex Market Time Converter</th></tr>
        <tr><th colspan="6">
            <p style="margin:5px 0 10px 0">Time Zone: <select name="timezone" style="width:200px; padding:3px 0">
                <?php
                $data = $this->_model->_list_time_zone();
                foreach($data as $row){
                    if($row['id']!=$idTimeZone) $select=''; else $select='selected="selected"';
					echo '<option value="'.$row['id'].'" '.$select.'>'.$row['name'].'</option>';
                }
                ?>
            </select>
            </p>
            <p><?php echo 'Time: '.date('h:i A').' - Date: '.date('l, F d, Y');?></p>
        </th></tr>
        <tr>
            <th>Forex Market Center</th>
            <th>Time Zone</th>
            <th>Opens</th>
            <th>Closes</th>
            <th>Status</th>
        </tr>
    </thead>
    <thead>
		<?php
        $data = $this->_model->_web_timezone();
        foreach($data as $row){
			$o = $row['opens']*3600 + $hour + $minute;
			$c = $row['closes']*3600 + $hour + $minute;
			if($row['opens']>$row['closes']){
				$c = (24+$row['closes'])*3600 + $hour + $minute;
			}
			
			if($row['other']==1){
                if($timeStatus>=$row['opens'] && $timeStatus<$row['closes']) $status='<span class="message">open</span>';
                else $status='<span class="error">close</span>';
            }else{
                if($timeStatus>=$row['opens'] && $timeStatus>$row['closes']) $status='<span class="message">open</span>';
                elseif($timeStatus<$row['opens'] && $timeStatus<$row['closes']) $status='<span class="message">open</span>';
                else $status='<span class="error">close</span>';
            }
			
			$dO = $strtotime + $o;
			$dC = $strtotime + $c;
            
            echo '<tr>
                <td align="center">'.$row['name'].'</td>
                <td align="center">'.$row['timezone'].'</td>
                <td align="center">'.date('h:i A, F-d-Y', $dO).'</td>
                <td align="center">'.date('h:i A, F-d-Y', $dC).'</td>
                <td align="center">'.$status.'</td>
            </tr>';
        }
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        
        ?>
    </thead>
</table>
<script type="text/javascript">
	$(document).ready(function(e) {
        $("select[name=timezone]").change(function(){
			var id = $(this).val();
			$("#loading").show();
			$.ajax({ 	
				url:"<?php echo CONS_BASE_URL;?>/ajax/",
				type:'post',
				data:{changeTimeZone:id},
				cache:false,
				success: function(data){
					$("#loading").hide(100);
					$("#timezone").html(data);
				}
			});
		});
    });
</script>