// Load required google map script and appending to body (NOT rails way, but looks interesting and tried)
$(window).load(function() {
  loadScript();
});

var map;

function initialize() {
  var mapOptions = {
          center: new google.maps.LatLng(22.7253, 75.8655),
          zoom: 12,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
  // initializing map
  map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
}

function loadScript() {
	console.log("loading Indore's map ...");
  var script = document.createElement('script');
  script.type = 'text/javascript';
  //'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o&sensor=false&libraries=drawing'
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    //'&v=3.14'+
    //'&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o'+
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}

function addPolygon(location_id) {
  

  $(this)
}

function getBoundaries(location_id) {
  var id = "#boundaries_"+location_id
  var jSon = jQuery.parseJSON($(id).val());
  var boundaries = jSon.boundaries;
  var res = [];
  $(boundaries).each(function() {
    var lat = $(this)[0].latitude;
    var lan = $(this)[0].longitude;
    res.push(new google.maps.LatLng(lat, lan));
  })
  return res;
}

function getColor(location_id) {
  return $("#color_"+location_id).val();
}
 
$(document).on('click', "input[type='checkbox']", function() {
  var checked = $(this).is(':checked');
    var location_id = $(this).attr('id');
    var boundaries = getBoundaries(location_id);
    var color = getColor(location_id);
    // Construct the polygon.
    var polygonMark = new google.maps.Polygon({
      paths: boundaries,
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 3,
      fillColor: color,
      fillOpacity: 0.35
    });
    if(checked) {
      polygonMark.setMap(map);  
    }
    $(this).on('change', function() {
      if(!($(this).is(':checked'))) {
        polygonMark.setMap(null);
      }
    })

    google.maps.event.addListener(polygonMark, 'click', function( event ){
      map.setZoom(14);
      map.setCenter(new google.maps.LatLng(event.latLng.lat(), event.latLng.lng()));
    });
});
