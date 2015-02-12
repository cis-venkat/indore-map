// Load required google map script and appending to body (NOT rails way, but looks interesting and tried)
$(window).load(function() {
  loadScript();
});

var map;

function initialize() {
  var mapOptions = {
          center: new google.maps.LatLng(22.7253, 75.8655),
          zoom: 13,
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
