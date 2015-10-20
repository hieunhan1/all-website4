<div id="footer">
	<div class="container">
    	<div id="run_top">TOP</div>
        <div class="clear1"></div>
        <div class="info-footer">
        	<div class="js-infocompany">
                <h2><?php echo $config['sitename'];?></h2><div class="copyCompany"><a href="javascript:;" class="js-copybtn">Copy company information</a></div>
                <p><?php echo CONS_CONTACT_ADDRESS.': '.$config['address'].' &nbsp;-&nbsp; MST: '.$config['mst'];?></p>
            </div>
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
<script type="text/javascript">
$(document).ready(function(e) {
	var copyEmailBtn = document.querySelector('.js-copybtn');
	copyEmailBtn.addEventListener('click', function(event) {
		// Select the email link anchor text
		var emailLink = document.querySelector('.js-infocompany');
		var range = document.createRange();
		range.selectNode(emailLink);
		window.getSelection().addRange(range);
		
		try {
			// Now that we've selected the anchor text, execute the copy command
			var successful = document.execCommand('copy');
			var msg = successful ? 'successful' : 'unsuccessful';
			console.log('Copy email command was ' + msg);
		} catch(err) {
			console.log('Oops, unable to copy');
		}
		
		// Remove the selections - NOTE: Should use
		// removeRange(range) when it is supported
		window.getSelection().removeAllRanges();
		alert('Sao chép thông tin công ty vào bộ nhớ thành công!');
	});
});
</script>

<script type="text/javascript">
$(document).ready(function(e) {
	var copyEmailBtn = document.querySelector('.copyCompanyHeader');
	copyEmailBtn.addEventListener('click', function(event) {
		// Select the email link anchor text
		var emailLink = document.querySelector('.js-infocompany');
		var range = document.createRange();
		range.selectNode(emailLink);
		window.getSelection().addRange(range);
		
		try {
			// Now that we've selected the anchor text, execute the copy command
			var successful = document.execCommand('copy');
			var msg = successful ? 'successful' : 'unsuccessful';
			console.log('Copy email command was ' + msg);
		} catch(err) {
			console.log('Oops, unable to copy');
		}
		
		// Remove the selections - NOTE: Should use
		// removeRange(range) when it is supported
		window.getSelection().removeAllRanges();
		alert('Sao chép thông tin công ty vào bộ nhớ thành công!');
	});
});
</script>