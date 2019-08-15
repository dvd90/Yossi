import "bootstrap";
import flatpickr from "flatpickr";

flatpickr(".datepick", {});

$('.navbar-open').click(function() {
  $('.nav-expand').slideToggle(200);
});
