<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&language=vi"></script>
<script type="text/javascript">
function initialize() {
	var myLatlng = new google.maps.LatLng(10.80048, 106.66425);
	var myOptions = {
	zoom: 16,
	center: myLatlng,
	//deny
	scrollwheel: false,
	mapTypeControl: false,
	//navigationControl: false,
	//scaleControl: false,
	//draggable: false,
	
	mapTypeId: google.maps.MapTypeId.ROADMAP
}

var map;
map = new google.maps.Map(document.getElementById("map_google"), myOptions);
	// Biến text chứa nội dung sẽ được hiển thị
	//var text = "<b style='color:#00F' " + "style='text-align:center'>Nhà của mình nè!<br />" + "<img src='citihouse-logo.jpg'  /></b>";
	var infowindow = new google.maps.InfoWindow({
		//content: text,
		size: new google.maps.Size(100,50),
		position: myLatlng
	});
	//infowindow.open(map);    
	var marker = new google.maps.Marker({
		position: myLatlng, 
		map: map,
		title:"Dịch vụ nấu tiệc Hoa Mai"
	});
}

initialize();
</script>