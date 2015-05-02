<div class="row">

<div class="col-md-6">
	<h2><?php echo __('Contact Us'); ?></h2>
	<pre>
	<strong>Name:</strong>      Bangladesh Open University
	<strong>Country:</strong>   Bangladesh
	<strong>State:</strong>     Dhaka Division
	<strong>District:</strong>  Gazipur
	<strong>Locality:</strong>  Board Bazar
	</pre>
</div>


<div class="col-md-6">
<div id="googleMap" style="width:500px;height:380px;"></div>
</div>
</div>


<script src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var myCenter=new google.maps.LatLng(23.9513208,90.37983810);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:15,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>