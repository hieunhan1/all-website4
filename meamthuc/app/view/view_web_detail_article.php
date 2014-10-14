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
    <?php
    echo "<h1>{$row_detail['name']}</h1>";
    echo $row_detail['content'];
    ?>
</div>

<?php
$data = $this->_model->_other_post_article($row_detail['id'],$idMenu);
if(count($data) > 0){
    echo '<div id="other_post"><hr /><div id="other_post_title">'.CONS_OTHER_POST.'</div>';
    foreach($data as $row){
        echo '<li class="all_icon"><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
    }
    echo '</div>';
}
?>
<div style="clear:both; height:15px"></div>