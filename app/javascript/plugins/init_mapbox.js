import mapboxgl from 'mapbox-gl';

function getRoute(map, mapElement){

  var start = [mapElement.dataset.origLon, mapElement.dataset.origLat];
  var end = [mapElement.dataset.destLon, mapElement.dataset.destLat];
  var directionsRequest = 'https://api.mapbox.com/directions/v5/mapbox/driving/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?geometries=geojson&access_token=' + 'pk.eyJ1IjoidGhpYmF1dDkyIiwiYSI6ImNqb2lmZDA0czA3c20zb2xmc2Ixa2Fja24ifQ.Krx4Yl2av2_jtdkjq2I4pQ';
  $.ajax({
    method: 'GET',
    url: directionsRequest,
  }).done(function(data) {
    var route = data.routes[0].geometry;
    map.addLayer({
      id: 'route',
      type: 'line',
      source: {
        type: 'geojson',
        data: {
          type: 'Feature',
          geometry: route
        }
      },
      paint: {
        'line-width': 2
      }
    });
    map.addLayer({
      id: 'start',
      type: 'circle',
      source: {
        type: 'geojson',
        data: {
          type: 'Feature',
          geometry: {
            type: 'Point',
            coordinates: start
          }
        }
      }
    });
    map.addLayer({
      id: 'end',
      type: 'circle',
      source: {
        type: 'geojson',
        data: {
          type: 'Feature',
          geometry: {
            type: 'Point',
            coordinates: end
          }
        }
      }
    });
    let maxLng = parseFloat(start[0]);
    let minLng = parseFloat(start[0]);
    let maxLat = parseFloat(start[1]);
    let minLat = parseFloat(start[1]);
    route.coordinates.forEach((coordinate) => {
      if (coordinate[0] > maxLng) {
        maxLng = coordinate[0];
      }
      if (coordinate[0] < minLng) {
        minLng = coordinate[0];
      }
      if (coordinate[1] > maxLat) {
        maxLat = coordinate[1];
      }
      if (coordinate[1] < minLat) {
        minLat = coordinate[1];
      }
    });
    const bounds = [[minLng, minLat], [maxLng, maxLat]];
    console.log(bounds);
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
    // this is where the code from the next step will go
  });
}

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10',
      center: [mapElement.dataset.origLon, mapElement.dataset.origLat],
      zoom: 5
    });
    // const markers = JSON.parse(mapElement.dataset.markers);
    // addMarkersToMap(map, markers);
    // fitMapToMarkers(map, markers);
    map.on('load', function() {
      getRoute(map, mapElement)
    });
  }
};

export { initMapbox };





const initMapboxIndex = () => {
  const mapElement = document.getElementById('map-index');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
  };

  const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
  }

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map-index',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapboxIndex };
