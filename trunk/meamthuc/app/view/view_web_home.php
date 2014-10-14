<?php
/*
1: dich vu home
2: dao tao home
3: mac dich home
*/
$i = 0;
$arr_type_home = array(1,2,3,4);
$data = $this->_model->_home_list_menu($idMenu);
foreach($data as $row){
	if($arr_type_home[$i]==1) echo $this->home_box_service($row['id'], $row['name']);
	elseif($arr_type_home[$i]==2) echo $this->home_box_daotao($row['id'], $row['name']);
	elseif($arr_type_home[$i]==3) echo $this->home_box_daubep($row['id'], $row['name']);
	elseif($arr_type_home[$i]==4) echo $this->home_box_monan($row['id'], $row['name']);
	$i++;
}
?>
