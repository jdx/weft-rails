$ ->
  updateMap()
  pusher = new Pusher('533917a995f14c4f3a5c')
  channel = pusher.subscribe('test_channel')
  channel.bind 'update', ->
    $.getJSON '/device.json', (data) ->
      $('#lat').text(data.location.lat)
      $('#lon').text(data.location.lon)
      updateMap()

updateMap = ->
  lat = parseFloat($('#lat').text())
  lon = parseFloat($('#lon').text())
  loc = new google.maps.LatLng(lat, lon)
  mapOptions =
    center: loc,
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  window.map ||= new google.maps.Map(document.getElementById("map_canvas"), mapOptions)
  window.marker ||= new google.maps.Marker
    map: map
  window.marker.position = loc
