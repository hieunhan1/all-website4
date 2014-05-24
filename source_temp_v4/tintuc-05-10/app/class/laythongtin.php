<?php
require_once "simple_html_dom.php";
class laythongtin {
	public $laytt;
	public $lang;
	public $params;
	function __construct($action,$params,$lang){
		$this->laytt = new model_laythongtin;
		$this->params = $params;
		$this->lang = $lang;
	}
	
	function vnexpress(){	
		set_time_limit(60*3);
		$urldolink = "http://www.vnexpress.net"; 
		$tenmien = "http://www.vnexpress.net";
		$source="VNEXPRESS";
		
		$linkarray=array();		
		$kq = file_get_html($urldolink) ;
		
		//bắt đầu dò tiêu đề theo đặc điểm 1 
		$arr = $kq->find("a") ;
		foreach ($arr as $link){			
			if ($link->href==NULL)  continue;
			if ($link->plaintext==NULL) continue;
			$tieude=str_replace("&nbsp;"," ",$link->plaintext);
			$tieude=trim($tieude);		
			if ($tieude=="") continue;
				
			if (substr($link->href,0,1)=="/") $link->href=$tenmien. $link->href;
			if (substr($link->href,0,7)!="http://") $link->href=$tenmien."/".$link->href;
			if (substr($link->href,0,strlen($tenmien)) != $tenmien) continue;
		
			if (in_array($link->href,$linkarray)==false) $linkarray[]=$link->href;
		} //foreach
		//kết thúc dò tiêu đề theo đặc điểm 1 
		
		$kq->clear(); unset($kq);	
		foreach ($linkarray as $urlbv ) echo $urlbv,"<br>";
		//aaaa
		
		foreach ($linkarray as $urlbv ) {
		   $html = file_get_html($urlbv);
		   $kq = array();
		   $td = $html->find('.title_news h1',0); 
		   if (is_null($td)) continue;
		   $kq['tieude'] = strip_tags($td->plaintext); $td->outertext='';
		   $tt = $html->find('.short_intro',0);    
		   if (is_null($tt)) continue;
		   $kq['tomtat'] = strip_tags($tt->innertext); $tt->outertext = '';
		   $content = $html->find('#left_calculator',0);
		   if (is_null($content)) continue;
		   $urlhinh = '';
		   if ($content!=NULL)
		   foreach( $content->find('img') as $img) {		
			if (substr($img->src,0,1)=="/") $img->src=$tenmien.$img->src;
			if (substr($img->src,0,7)!="http://") $img->src=$tenmien."/".$img->src;
			$tenfile = basename($img->src);
			$pathfile = "../img/baiviet/".$tenfile;
			file_put_contents($pathfile, file_get_contents($img->src));
			$img->src = "/tintuc/img/baiviet/".$tenfile;		
			if($urlhinh=='') { $urlhinh=$img->src; break;}
		   } //foreach
		 
		   $kq['content'] = $content->innertext;
		   $kq['urlhinh'] = $urlhinh;
		   $kq['source']=$source;
		   $kq['urlbv']=$urlbv;
		   $html->clear(); unset($html);
		   echo "Tieude : " . $kq['tieude']."<br/>";
		   echo "Tomat : ".$kq['tomtat']."<br/>";
		   echo "Content: <code>",$kq['content'],"</code><hr/>";
		   //$this->laytt->luutinmoilay($kq);
		   flush();
		}//foreach

	}//function vnexpress
	
	function duyetbai(){
		$baimoi = $this->laytt->laytinmoi(5);
		$phanloai = $this-> laytt->layloai('vi',0);
		require_once "view/duyetbai.php";
	}

	function laytinmoi($sotin){
	   $sql = "SELECT idbv, tieude, tomtat, ngay,urlgoc,source FROM laytudong 
			 WHERE daduyet=0 ORDER BY idbv ASC LIMIT 0, $sotin";
	   if(!$kq = $this->db->query($sql)) die( $this->db->error);		
	   $data=array();
	   while ($row= $kq->fetch_assoc()) $data[]=$row;
	   return $data;
	} //laytinmoi
	function layloai($lang='vi',$idcha = 0,$gach = '-  ', $arr = NULL){ 
	   if(!$arr) $arr = array();
	   $sql="SELECT idloai, tenloai FROM phanloaibai 
			 WHERE idcha=$idcha and lang='$lang'";
	   if(!$kq = $this->db->query($sql)) die( $this->db->error);	
	   while($row = $kq->fetch_assoc()){ 
		$arr[] = array('id'=>$row['idloai'],'ten'=>$gach.$row['tenloai']); 
		$arr = $this->layloai($lang,$row['idloai'],$gach.'--   ',$arr); 
	   } 
	   return $arr; 
	}//layloai

	function cancel(){
	   $idbv= $this->params[0]; settype($idbv,"int");
	   $this->laytt->cancel($idbv);
	   echo "OK";
	}
	
	function xem1bai(){
	   $idbv= $this->params[0]; settype($idbv,"int");
	   $row = $this->laytt->xem1bai($idbv);
	   echo "<h3>".$row['tieude'],"</h3>";
	   echo "<i>".$row['tomtat'],"</i><hr/>";
	   echo "<div>".$row['content'],"</div>";
	}

	
	
}//class
?>
