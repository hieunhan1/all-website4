<?php
$code = trim($_GET['code']);
$code = $this->_model->_remove_tag($code);
$code = $this->_model->_change_dau_nhay($code);
?>
<div id="right">
	<?php include_once('view_web_slider.php');?>
    <div id="navigator">
    <?php
    $i=0;
    $data = $this->navigator($idMenu,$lang);
    foreach($data as $row){
        $i++;
        if($i!=1){
			$lang_navigator = $lang.'/';
			$icon='<span>&gt;&gt;</span>';
		}else{
			$lang_navigator = '';
			$icon='';
		}
        echo $icon.'<a href="'.$lang_navigator.$row['url'].'">'.$row['name'].'</a>';
    }
    ?>
    </div>
    
    <div class="viewpost">
        <h1><?php echo $current_menu['title'];?></h1>
        <h2 style="margin-bottom:20px"><?php echo $current_menu['description'];?></h2>
    </div>
    
    <div id="article_list">
    	<form action="<?php echo $current_menu['url'];?>" method="get"><div id="tracing_express">Mã bưu phẩm bưu kiện: &nbsp; <input type="text" name="code" value="<?php echo $code;?>" id="txtfrmcode" placeholder="<?php echo CONS_HEADER_INPUT_CODE;?>" /><input type="submit" value="Tracking" id="btnfrmcode" /></div></form>
        <?php
        $tracking_code = $this->tracking_code_export_xml($code);
		if($code!=''){
		?>
        <table width="80%" border="1" cellpadding="10" cellspacing="0" style="line-height:20px; border:solid 1px #CCC; border-collapse:collapse; margin:auto">
        	<tr bgcolor="#EEE">
            	<td style="font-weight:bold" width="120">Thời gian</td>
            	<td style="font-weight:bold">Chi tiết</td>
            </tr>
            <tbody id="ajax_code"></tbody>
        </table>
        <div style="height:30px; clear:both"></div>
		<script type="text/javascript">
		$(document).ready(function(e) {
			function format_datetime(datetime){
				datetime = datetime.split("T");
				var date = datetime[0];
				date = date.split("-");
				var time = datetime[1];
				time = time.split(".");
				return date[2] + '-' + date[1] + '-' + date[0] + ' ' + time[0];
			}
			$.ajax({
				type: "GET",
				url: "public/code.xml",
				dataType: "xml",
				cache: false,
				success: function(xml) {
					$(xml).find('table').each(function(){
						var createddate = $(this).find('createddate').text();
						var remark 		= $(this).find('remark').text();
						var data = '<tr>';
						data += '<td>' + format_datetime(createddate) + '</td>';
						data += '<td>' + remark + '</td>';
						data += '</tr>';
						$(data).appendTo('#ajax_code');
					});
					return true;
				}
			});
			
			$.ajax({
				type: "POST",
				url: "<?php echo $lang;?>/ajax/",
				data: {delete_code:1},
				cache: false,
			});
		});
		</script>
        <?php } ?>
    </div>
</div>

<div id="left"><?php include_once('view_web_quick_booking.php');?></div>