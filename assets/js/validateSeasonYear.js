function limitYearSelection() {
  var statusSelect = document.getElementById("status");
  var yearInput = document.getElementById("year");
  var currentYear = new Date().getFullYear();

  yearInput.value = "";

  // Kalau upcoming, set min jadi tahun sekarang, dan tahun menjadi tahun sekarang + 5
  if (statusSelect.value === "Upcoming") {
    yearInput.setAttribute("min", currentYear);
    yearInput.setAttribute("max", currentYear + 5);
  } else if (statusSelect.value === "Finished") {
    yearInput.setAttribute("min", 1917);
    yearInput.setAttribute("max", currentYear);
  } else {
    yearInput.setAttribute("min", 1917);
    yearInput.setAttribute("max", currentYear);
  }
}

document
  .getElementById("status")
  .addEventListener("change", limitYearSelection);
