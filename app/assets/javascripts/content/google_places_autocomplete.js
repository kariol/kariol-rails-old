$(document).ready(function() {
  var autocomplete_address = $('#user_address').get(0);

  if (autocomplete_address) {
    var autocomplete = new google.maps.places.Autocomplete(autocomplete_address, {
      componentRestrictions: {country: 'fr'} });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
    google.maps.event.addDomListener(autocomplete_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged() {
  var place = this.getPlace();
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {  // Some types are ["country", "political"]
      var type = document.getElementById(component.types[j]);
      if (type) {
        type.value = component.long_name;
      }
    }
  }
}
