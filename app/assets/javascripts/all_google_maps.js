$(function(){
  if ($("#all_map").length > 0) {
    function initialize() {
      var map = new google.maps.Map(document.getElementById('all_map'), {
        zoom: 13,
        center: {lat:51.5085300, lng:-0.1257400}
      });

      for (i = 0; i < gon.bikes.length; i++){

        var myLatLng = {lat: gon.bikes[i].latitude, lng: gon.bikes[i].longitude};

      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        title: 'Hello World!'
      });
    }
    }
    
    google.maps.event.addDomListener(window, 'load', initialize);
  }

  
})