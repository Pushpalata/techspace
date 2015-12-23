document.writeln("<script type='text/javascript' src='https://maps.googleapis.com/maps/api/js?v=3.11&sensor=false'></script>")

$(document).ready(function() {
  // execute
  (function() {
      // map options
      var options = {
          zoom: 2,
          center: new google.maps.LatLng(19, 72), // centered
          mapTypeId: google.maps.MapTypeId.TERRAIN,
          mapTypeControl: false
      };

      // init map
      var map = new google.maps.Map(document.getElementById('map_canvas'), options);

      // set multiple marker
      for (var i = 0; i < addresses.length; i++) {
          var address_latlong = addresses[i];
          // init markers
          var marker = new google.maps.Marker({
              position: new google.maps.LatLng(address_latlong[1], address_latlong[2]),
              map: map,
              title: address_latlong[0]
          });

          // process multiple info windows
          (function(marker, i) {
              // add click event
              google.maps.event.addListener(marker, 'click', function() {
                  infowindow = new google.maps.InfoWindow({
                      content: marker.title
                  });
                  infowindow.open(map, marker);
              });
          })(marker, i);
      }
  })();
});
