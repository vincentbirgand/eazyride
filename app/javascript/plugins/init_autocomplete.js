import places from 'places.js';

const initAutocomplete = () => {
  const source_cityInput = document.getElementById('journey_source_city');
  if (source_cityInput) {
    places({ container: source_cityInput });
  }
  const dest_cityInput = document.getElementById('journey_destination_city');
  if (dest_cityInput) {
    places({ container: dest_cityInput });
  }
};

export { initAutocomplete };
