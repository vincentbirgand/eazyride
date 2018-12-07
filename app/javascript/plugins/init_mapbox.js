import mapboxgl from 'mapbox-gl';

function getRoute(map, mapElement){

  var start = [mapElement.dataset.origLat, mapElement.dataset.origLon];
  var end = [mapElement.dataset.destLat, mapElement.dataset.destLon];

  var directionsRequest = 'https://api.mapbox.com/directions/v5/mapbox/driving/' + start[0] + ',' + start[1] + ';' + end[0] + ',' + end[1] + '?geometries=geojson&access_token=' + 'pk.eyJ1IjoidGhpYmF1dDkyIiwiYSI6ImNqb2lmZDA0czA3c20zb2xmc2Ixa2Fja24ifQ.Krx4Yl2av2_jtdkjq2I4pQ';
  console.log(directionsRequest)
  $.ajax({
    method: 'GET',
    url: directionsRequest,
  }).done(function(data) {
    console.log(data)
    var route = data.routes[0].geometry;
    console.log(map)
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
    const bounds = [start, end]
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
      center: [mapElement.dataset.origLat, mapElement.dataset.origLon],
      zoom: 12
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
