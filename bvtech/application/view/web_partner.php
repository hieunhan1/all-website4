<div id="partner">
    <div id="contentPartner">
        <div class="simply-scroll simply-scroll-container">
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width:5000px">
                    <?php
					$position=1;
					$data = $c->_model->_listSliderBanner($lang, $position);
                    foreach($data as $row)
                        echo '<li class="img"><a href="'.$row['url'].'" title="'.$row['name'].'" target="_blank"><img src="'.$urlImg[12]['url_img'].$row['img'].'" alt="'.$row['name'].'"></a></li>';
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="js/partner/common.js"></script>
<script type="text/javascript" src="js/partner/jquery.simplyscroll.min.js"></script>
<script type="text/javascript"> (function($){ $(function(){ $("#scroller").simplyScroll(); }); })(jQuery); </script>