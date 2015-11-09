$(function(){
  if ($("#all_map").length > 0) {
    function initialize() {
      var map = new google.maps.Map(document.getElementById('all_map'), {
        zoom: 13,
        center: {lat:51.5085300, lng:-0.1257400}
      });
      var infowindow = new google.maps.InfoWindow();

      for (i = 0; i < gon.bikes.length; i++){

        var myLatLng = {lat: parseFloat(gon.bikes[i].latitude), lng: parseFloat(gon.bikes[i].longitude)};

      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!',
        icon: 'http://i.imgur.com/wRTpUCC.png',
        url: "/bikes/" + gon.bikes[i].id
      });
      google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
        return function() {
          infowindow.setContent(gon.bikes[i].name);
          infowindow.open(map, marker);
        }
      })(marker, i));
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(gon.bikes[i].name);
          infowindow.open(map, marker);
          window.location.href = this.url;
        }
      })(marker, i));
    }
    }
    
    google.maps.event.addDomListener(window, 'load', initialize);
  }

  
})