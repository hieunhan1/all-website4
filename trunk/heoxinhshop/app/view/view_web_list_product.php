<?php include_once('view_web_list_product_left.php');?>
<div id="right">
    <div id="navigator">
    <?php
    $i=0; //echo $idMenu.$lang;
    $data = $this->navigator($idMenu,$lang);
    foreach($data as $row){
        $i++;
        if($i!=1) $icon='<span>&gt;&gt;</span>'; else $icon='';
        echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
    }
    ?>
    </div>
    
    <div class="viewpost" style="margin-bottom:20px">
        <h1><?php echo $menu_info['title'];?></h1>
        <h2><?php echo $menu_info['description'];?></h2>
    </div>
    
    <div class="product_list">
        <?php
        $per_page=$this->_config['max_limit_2'];
        $startrow=($currentpage-1)*$per_page;
        $data = $this->_model->_list_web_product($idMenu, $per_page, $startrow, $totalrows);
        $i=0;
        foreach($data as $row){
            $i++;
            if($i%4 != 1) $style='style="margin-left:9px"'; else $style='';
            if($row['giagoc']!=0) $giagoc = number_format($row['giagoc'],0,'.',','); else $giagoc='';
            echo '<div class="product_box" '.$style.'>
                <div class="product_img"><a href="'.$row['url'].'"><img src="'.CONS_IMAGES_PRODUCTS_THUMBS.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
                <div class="product_price"><span>'.$giagoc.'</span> '.number_format($row['giaban'],0,'.',',').'đ</div>
                <a href="'.$row['url'].'"><h3 class="product_name">'.$row['name'].'</h3></a>
                <div class="product_buy" idsp="'.$row['id'].'" alias="'.$row['name_alias'].'">mua hàng</div>
            </div>';
        }
        ?>
    </div>
    
    <div id="phantrang"><?php echo $this->_model->_pageslist($menu_info['url'], $totalrows, 5, $per_page, $currentpage);?></div>
</div>