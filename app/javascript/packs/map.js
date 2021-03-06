import 'mapbox-gl/dist/mapbox-gl.css'
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css'

import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

console.log('hello world')
const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY; // API key from `.env`
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/guillo16/cjoin6s643t1y2so0ilj48r52'

});
  map.addControl(new MapboxGeocoder({
    accessToken: mapboxgl.accessToken
  }));
  const markers = JSON.parse(mapElement.dataset.markers);

  markers.forEach((marker) => {
    const el = document.createElement('div');
    el.className = 'marker';
    el.style.backgroundImage = 'url(https://res.cloudinary.com/dw7ox75dg/image/upload/v1542387846/island-icon-png-11.png)';
    el.style.width = '25px';
    el.style.height = '25px';

    new mapboxgl.Marker(el)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
      .setHTML(marker.infoWindow.content))
      .addTo(map);
  });
   if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 })
  }
}

const locationInput = document.getElementById('island_location');

if (locationInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: locationInput
  });
}


