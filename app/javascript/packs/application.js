import "bootstrap";
import "../plugins/flatpickr"

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initMapbox, initMapboxIndex } from '../plugins/init_mapbox';

initMapbox();
initMapboxIndex();
initAutocomplete();

$('[data-toggle="tooltip"]').tooltip()
