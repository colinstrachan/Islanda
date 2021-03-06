import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

const booked_dates_node = document.getElementById("booked_dates")
if (booked_dates_node == null || booked_dates_node == undefined) {
  console.log("Booked dates undefined")
  flatpickr(".datepicker", {mode: 'range', minDate: "today"})
} else {
  const booked_dates = booked_dates_node.dataset.bookeddates
  const parsed_dates = JSON.parse(booked_dates)
  console.log(parsed_dates)
  flatpickr(".datepicker", {mode: 'range', minDate: "today", dateFormat: "Y-m-d", disable: parsed_dates})
}
