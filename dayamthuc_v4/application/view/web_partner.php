<div id="partner">
	<div class="content">
    	<h4 class="fontOther">LIÊN KẾT ĐỐI TÁC ĐÀO TẠO, HIỆP HỘI, DOANH NGHIỆP</h4>
        <?php
		$position = 3;
		$data = $c->_model->_listSliderBanner('', $position);
		if(count($data)>0){
		?>
        <div id="contentPartner">
            <div class="simply-scroll simply-scroll-container">
                <div class="simply-scroll-clip">
                    <ul id="scroller" class="simply-scroll-list" style="width:2255px">
                        <?php
                        foreach($data as $row)
							echo '<li class="img"><a href="'.$row['url'].'" title="'.$row['name'].'" target="_blank"><img src="'.$urlImg[12]['url_img'].$row['img'].'" alt="'.$row['name'].'"></a></li>';
						?>
                    </ul>
                </div>
            </div>
        </div>
        <?php }?>
    </div>
</div>
<script type="text/javascript" src="js/partner/common.js"></script>
<script type="text/javascript" src="js/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>