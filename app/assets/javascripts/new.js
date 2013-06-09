function getLocation()
{
  if (navigator.geolocation)
  {
    navigator.geolocation.getCurrentPosition(positionCb);
  }
}

function positionCb(position) {
  var long = position.coords.longitude;
  var lat = position.coords.latitude;
  $("#tip_location").val("Current Location");
  $("#tip_lat").val(lat);
  $("#tip_long").val(long);
}

$(document).ready(function() {
  $("#get_location").click(function() {
    debugger;
    getLocation();
    return false;
  });
});