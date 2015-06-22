<div id="right">
    <div id="tracing">
    	<?php
        $typeID=7;
		$data = $c->_model->_menuTypeId($typeID);?>
    	<form action="<?php echo $data['url'];?>" method="get" name="tracing">
        <h2 class="title">Tracing <span>Express</span></h2>
        <input type="text" name="txtTracing" class="txt" placeholder="Code" />
        <input type="submit" name="btnTracing" value="SEARCH" class="btn" />
        </form>
    </div>
    
    <div id="news">
		<?php
        $parent=0; $position=4;
        $dataLeft = $c->_model->_listMenu($lang, $parent, $position);
		echo '<h2 class="title">'.$dataLeft[0]['name'].'</h2>';
		$data = $c->_model->_listDetailMenu($dataLeft[0]['id'], 4);
		foreach($data as $row){
			echo '<div class="box">
				<div class="date">'.date('l, F d Y', $row['datetime']).'</div>
				<a href="'.$row['url'].'" class="link">'.$row['name'].'</a>
			</div>';
		}
		echo '<div class="seeall"><a href="'.$dataLeft[0]['url'].'" title="'.$dataLeft[0]['title'].'" class="allIcon">See all</a></div>';
        ?>
    </div>
    
</div>