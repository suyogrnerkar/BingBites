mapboxgl.accessToken = 'pk.eyJ1Ijoic3V5b2dybmVya2FyIiwiYSI6IkJjTWFNVjQifQ.umq3dIayAEU8Bk3PsoJftQ';

var map = new mapboxgl.Map({
  container: 'map', // container id
  style: 'mapbox://styles/suyogrnerkar/cj0lbaxqh00312smtgu81rtnv',
  center: [-75.9180, 42.0987], // starting position
  zoom: 3, // starting zoom
  zoomControl: true
});


// Add zoom and rotation controls to the map.
map.addControl(new mapboxgl.NavigationControl());

// Add geolocate control to the map.
map.addControl(new mapboxgl.GeolocateControl());
map.addControl(new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    position: 'top-left'
}));

map.on('click', function (e) {
    $('#eatery_lat').val(JSON.stringify(e.lngLat.lat));
    $('#eatery_long').val(JSON.stringify(e.lngLat.lng));
});
