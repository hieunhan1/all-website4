<div id="navigator">
<?php
$i=0;
$data = $this->navigator($idMenu,$lang);
foreach($data as $row){
    $i++;
    if($i!=1){
        $icon='<span>&gt;&gt;</span>';
    }else{
        $icon='';
    }
    echo $icon.'<a href="'.$row['url'].'">'.$row['name'].'</a>';
}
?>
</div>

<div class="viewpost">
    <h1><?php echo $current_menu['title'];?></h1>
    <h2 style="margin-bottom:20px"><?php echo $current_menu['description'];?></h2>
</div>

<div id="article_list">
    <?php
    $i = 0;
    $per_page=$this->_config['limit_1'];
    $startrow=($currentpage-1)*$per_page;
    $data = $this->_model->_list_web_article($idMenu, $per_page, $startrow, $totalrows);
    if(count($data)>1){
        foreach($data as $row){
            $i++;
            if($i%2==1) $style='style="float:left"'; else $style='style="float:right"';
            echo '<div class="article_item" '.$style.'>
                <a href="'.$row['url'].'"><h3>'.$row['name'].'</h3></a>
                <div class="article_item_img"><img src="'.CONS_IMAGES_ARTICLES.$row['url_img'].'" alt="'.$row['name'].'" /></div>
                <p>'.$row['description'].'</p>
            </div>';
        }
        echo '<div id="phantrang">'.$this->_model->_pageslist($current_menu['url'], $totalrows, 5, $per_page, $currentpage).'</div>';
    }else if(count($data)==1) header('location: '.CONS_BASE_URL.'/'.$data[0]['url']);
    else echo '<p style="padding:30px 50px 100px">Update...</p>';
    ?>
</div>