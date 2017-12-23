<div id="footer">
	<div class="container">
    	<div id="run_top">TOP</div>
        <div class="clear1"></div>
        <div class="info-footer">
            <h2><?php echo $config['sitename'];?></h2><div class="copyCompany"><a href="javascript:;" class="js-copybtn">Copy company information</a></div>
            <p><?php echo CONS_CONTACT_ADDRESS.': '.$config['address'].' &nbsp;-&nbsp; MST: '.$config['mst'];?></p>
        </div>

        <div id="copyright" class="info-footer">
			<p><?php echo CONS_CONTACT_PHONE.': <a href="tel:'.$config['tel'].'">'.$config['tel'].'</a> &nbsp;-&nbsp; Hotline: '.$config['hotline'];?></p>
            <p><?php echo 'Fax: '.$config['fax'].' &nbsp;-&nbsp; Email: '.$config['email'];?></p>
        </div>
        <div class="clear10"></div>
        
        <div id="tagsALl">
			<?php
            $data = $c->_model->_listTagsKeyword($lang);
			foreach($data as $row) echo '<a href="'.$row['url'].'" title="'.$row['title'].'">'.$row['name'].'</a>';
            ?>
        </div>
    </div>
</div>
<div id="data-copy" class="js-infocompany" style="display:none">
<?php
echo $config['sitename']."\n";
echo CONS_CONTACT_ADDRESS.': '.$config['address'].' - MST: '.$config['mst']."\n";
echo CONS_CONTACT_PHONE.': '.$config['tel'].' - Hotline: '.$config['hotline']."\n";
echo 'Fax: '.$config['fax'].' - '.'Email: '.$config['email'];
?>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	$('.js-copybtn').click(function(){
		var value = $('#data-copy').html();
		var $temp = $('<textarea name="gw-copy-data"></textarea>');
		$('body').append($temp);
		$temp.val(value).select();
		document.execCommand('copy');
		$temp.remove();
		alert('Sao chép thông tin công ty vào bộ nhớ thành công!');
	});
});
</script>