<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='' || search.value=='Mô tả') return false;">
    	<input type="text" name="search" value="<?php if(!isset($_GET['search'])) echo 'Mô tả'; else echo $_GET['search']; ?>" class="txt" onfocus="if(value=='Mô tả') value=''" onblur="if(value=='') value='Mô tả'" />
    	<input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
	</form>
</div>