<div style="clear:both; margin-bottom:10px">
	<?php
	if(count($languages) > 1)
		foreach($languages as $row){
			if($lang != $row['language_code']) $style = '';
			else $style = 'style="background-color:#FF0; color:#333; border:solid 1px #999; padding:2px 5px"';
			echo '<a href="'.$link_lang.$row['language_code'].'" '.$style.'>'.$row['language_name'].'</a> &nbsp; | &nbsp;';
		}
	?>
</div>