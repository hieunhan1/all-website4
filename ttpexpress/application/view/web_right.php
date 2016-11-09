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
    
    <div id="hotline">
    	Hotline:<span><?php echo $config['hotline'];?></span>
    </div>
    
    
	<?php
    $parent=0; $position=4;
    $dataLeft = $c->_model->_listMenu($lang, $parent, $position);
    if( isset($dataLeft[0]) ) {
        echo '<div class="box-right"><h2 class="title-right">'.$dataLeft[0]['name'].'</h2>';
        $data = $c->_model->_listDetailMenu($dataLeft[0]['id'], 4);
        foreach($data as $row){
            echo '<div class="box">
                <div class="date">'.date('l, F d Y', $row['datetime']).'</div>
                <a href="'.$row['url'].'" class="link">'.$row['name'].'</a>
            </div>';
        }
        echo '<div class="seeall"><a href="'.$dataLeft[0]['url'].'" title="'.$dataLeft[0]['title'].'" class="allIcon">See all</a></div></div>';
    }
    ?>
    
    <div class="box-right">
    	<h2 class="title-right">Hỗ trợ trực tuyến</h2>
        <?php
        $data = $c->_model->_listSale();
        if( count($data)>0 ) {
            $str = '';
            foreach($data as $row){
                $skype = '';
                if( $row['skype']!='' ) {
                    $skype = '<a href="skype:'.$row['skype'].'?chat" class="skype"><img alt="" src="http://www.skypeassets.com/i/scom/images/skype-buttons/chatbutton_16px.png" /></a>';
                }
                
                $email = '';
                if( $row['email']!='' ) {
                    $email = '<a href="mailto:'.$row['email'].'" class="email">'.$row['email'].'</a>';
                }
                
                echo '<div class="box-support">
					<b>'.$row['name'].'</b> '.$skype.'<br />
					Handphone: <a href="tel:'.$row['phone'].'">'.$row['phone'].'</a><br />
                    '.$email.'
				</div>';
            }
        }
        ?>
    </div>
    
    <div class="clear1"></div>
    
</div>