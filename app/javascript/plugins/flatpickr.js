import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {})
flatpickr(".datetimepicker", {
  enableTime: true,
  time_24hr: true
})
