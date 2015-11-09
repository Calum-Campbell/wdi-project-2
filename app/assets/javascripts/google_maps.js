$(function(){
  if ($("#map").length > 0) {
    function initialize() {
      var myLatLng = {lat: gon.latitude, lng: gon.longitude};
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: myLatLng
      });

      var marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        icon: 'http://i.imgur.com/wRTpUCC.png',
        title: 'Hello World!'
      });
    }
    
    google.maps.event.addDomListener(window, 'load', initialize);
  } 
})