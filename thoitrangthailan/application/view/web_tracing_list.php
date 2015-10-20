<?php
$str='';
if(isset($_GET['txtTracing'])){
	$code=$_GET['txtTracing'];
	include_once('libraries/simple_html_dom.php');
	/*$request = array(
		'http' => array(
			'method' => 'POST',
			'content' => http_build_query(array(
				'code' => $code,
			)),
		)
	);*/
	//$context = stream_context_create($request);
	$url = "http://ptt1142.somee.com/HHEWebService.asmx/GetPostMailListAll?code=".$code;
	$html = file_get_html($url);
	
	foreach($html->find('Table') as $element){
		$date = $element->find('CreatedDate', 0)->plaintext;
		$date = strtotime($date);
		$remark = $element->find('Remark', 0)->plaintext;
		$str.='<tr> <td valign="top">'.date('d-m-Y H:i', $date).'</td> <td>'.$remark.'</td> </tr>';
	}
}else $code='';

echo $c->viewNavigator($lang, $currentMenu['id']);
?>
<div id="homeType2" class="viewpost">
	<?php echo "<h1>{$currentMenu['title']}</h1> <h2>{$currentMenu['description']}</h2>";?>
	<form action="<?php echo $currentMenu['url'];?>" method="get" name="tracing">
        <input type="text" name="txtTracing" placeholder="Code" value="<?php echo $code;?>" style="width:300px; padding:3px" />
        <input type="submit" name="btnTracing" value="SEARCH" style="padding:3px 20px" />
	</form>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0" class="table" style="border:solid 1px #999">
    	<tr style="color:#333; background-color:#CCC">
        	<th align="left" width="30%">Thời gian</th>
            <th align="left">Chi tiết</th>
        </tr>
    	<?php echo $str;?>
    </table>
    <p>&nbsp;</p>
</div>

<?php include_once('web_right.php');?>

<div class="clear1"></div>