<?php
/*function PIPHP_GoogleTranslate($text, $lang1, $lang2){
	$langs = array(
		'arabic'              => 'ar',
		'bulgarian'           => 'bg',
		'simplified chinese'  => 'zh-cn',
		'traditional chinese' => 'zh-tw',
		'croatian'            => 'hr',
		'czech'               => 'cs',
		'danish'              => 'da',
		'dutch'               => 'nl',
		'english'             => 'en',
		'finnish'             => 'fi',
		'french'              => 'fr',
		'german'              => 'de',
		'greek'               => 'el',
		'hindi'               => 'hi',
		'italian'             => 'it',
		'japanese'            => 'ja',
		'korean'              => 'ko',
		'polish'              => 'pl',
		'portuguese'          => 'pt',
		'romanian'            => 'ro',
		'russian'             => 'ru',
		'spanish'             => 'es',
		'vietnamese'          => 'vi',
		'swedish'             => 'sv');
	$lang1 = strtolower($lang1);
	$lang2 = strtolower($lang2);
	$root  = 'http://ajax.googleapis.com/ajax/services';
	$url   = $root.'/language/translate?v=1.0&q=';
	
	if(!isset($langs[$lang1]) || !isset($langs[$lang1])) return FALSE;
	
	$json = @file_get_contents($url.urlencode($text).'&langpair='.$langs[$lang1].'%7C'.$langs[$lang2]);
	
	if(!strlen($json)) return FALSE;
	
	$result = json_decode($json);
	return $result->responseData->translatedText;
}*/

function PIPHP_GoogleTranslate($text, $lang1, $lang2){
	$langs = array(
		'arabic'              => 'ar',
		'bulgarian'           => 'bg',
		'simplified chinese'  => 'zh-cn',
		'traditional chinese' => 'zh-tw',
		'croatian'            => 'hr',
		'czech'               => 'cs',
		'danish'              => 'da',
		'dutch'               => 'nl',
		'english'             => 'en',
		'finnish'             => 'fi',
		'french'              => 'fr',
		'german'              => 'de',
		'greek'               => 'el',
		'hindi'               => 'hi',
		'italian'             => 'it',
		'japanese'            => 'ja',
		'korean'              => 'ko',
		'polish'              => 'pl',
		'portuguese'          => 'pt',
		'romanian'            => 'ro',
		'russian'             => 'ru',
		'spanish'             => 'es',
		'vietnamese'          => 'vi',
		'swedish'             => 'sv');
	$lang1 = strtolower($lang1);
	$lang2 = strtolower($lang2);
	
	$apiKey = 'AIzaSyDiAraIjiMth3O71bjEy4WipONUNsL6On8';
	$root = 'https://www.googleapis.com/language/translate/v2/languages?key='.$apiKey;
	$url = $root.'&q='.rawurlencode($text).'&source='.$langs[$lang1].'&target='.$langs[$lang1];
	
	if(!isset($langs[$lang1]) || !isset($langs[$lang1])) return FALSE;
	
	$json = @file_get_contents($url);
	
	if(!strlen($json)) return FALSE;
	
	$result = json_decode($json);
	return $result->responseData->translatedText;
}


/*$apiKey = 'AIzaSyDiAraIjiMth3O71bjEy4WipONUNsL6On8';
$url = 'https://www.googleapis.com/language/translate/v2/languages?key=' . $apiKey;

$handle = curl_init($url);
curl_setopt($handle, CURLOPT_RETURNTRANSFER, true); //We want the result to be saved into variable, not printed out
$response = curl_exec($handle);                         
curl_close($handle);

print_r(json_decode($response, true));*/
?>