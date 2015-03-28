<?php
function check_email($str){
	$str = trim($str);
	$pattern = '/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)+$/';
	if(preg_match($pattern, $str)) return $str;
	else return false;
}

function checks_text($str,$lengh=0){
	$str = trim($str);
	if($str!='' && strlen($str)>=$lengh) return $str;
	else return false;
}

function checks_number($str){
	$str = trim($str);
	if(is_numeric($str)) return $str;
	else return false;
}

function checks_phone($str){
	$str = trim($str);
	$pattern = '/^[{0,(,+}][0-9-+()\.\s]{8,18}$/';
	if(preg_match($pattern, $str)) return $str;
	else return false;
}

function remove_tag($str){
	$str = strip_tags($str,""); 
	return $str;
}

function change_dau_nhay($str){
	$str = str_replace("'",'&#39;',$str);
	return $str;
}

function change_alias($alias){
	if(!$alias) return false;
	$str = $alias;
	$unicode = array(
		'a'=>'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
		'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
		'd'=>'đ',
		'D'=>'Đ',
		'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
		'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
		'i'=>'í|ì|ỉ|ĩ|ị',	  
		'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
		'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
		'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
		'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
		'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
		'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
		'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
		'' =>"`|~|!|@|#|$|%|^|&|*|(|)|-|_|+|=|\|[|]|{|}|:|;|\"|'|,|.|/|<|>|?|“|”|  ",
		'-'=>"| "
	);
	foreach($unicode as $khongdau=>$codau) {
		$arr=explode("|",$codau);
		$str = str_replace($arr,$khongdau,$str);
		$str = str_replace('|','',$str);
		$str = trim($str,'-');
	}
	return strtolower($str);
}