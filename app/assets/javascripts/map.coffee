$ ->
  lat = parseFloat($('#lat').text())
  lon = parseFloat($('#lon').text())
  mapOptions =
    center: new google.maps.LatLng(lat, lon),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  console.log mapOptions
  console.log lat
  console.log $('#lat').text()
  map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions)
