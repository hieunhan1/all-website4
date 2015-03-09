<div id="navigator">
	<?php
    $i=0;
    $data = $this->navigator($current_menu['id'],$this->_lang);
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