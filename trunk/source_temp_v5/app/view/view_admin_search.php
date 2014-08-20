<div id="search">
	<form action="" method="get" name="search" onsubmit="if(search.value=='') return false;">
    	<input type="text" name="search" value="<?php if(isset($_GET['search'])) echo $_GET['search']; ?>" class="txt"  placeholder="Mô tả" />
    	<input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
	</form>
</div>