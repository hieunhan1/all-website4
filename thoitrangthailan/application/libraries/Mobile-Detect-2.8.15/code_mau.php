<?php
include_once('libraries/Mobile-Detect-2.8.15/Mobile_Detect.php');
$detect = new Mobile_Detect;
if(!$detect->isMobile()){
	echo "PC: play.stdio.vn";
}else{
	if ($detect->isTablet())	{
		echo "TABLET: ";
		
		if($detect->version("Windows Phone"))
		{
			echo "Windows Phone 8";
		}
		else if($detect->isiOS())
		{
			echo "iOS";
		}
		else if ($detect->isAndroidOS())
		{
			echo "Android";
		}
	}else{
		echo "PHONE: ";
		
		if($detect->version("Windows Phone"))
		{
			echo "Windows Phone 8";
		}
		else if($detect->isiOS())
		{
			echo "iOS";
		}
		else if ($detect->isAndroidOS())
		{
			echo "Android";
		}
	}
}
?>