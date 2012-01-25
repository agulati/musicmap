// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//

$(function() {

	$("#calc").click(function() {
	
		var geocoder = new google.maps.Geocoder();
		var address = $("#address").val().trim(); 
	
		if( address != null && address != "" ) {
			geocoder.geocode( { 'address': address}, function(results, status) {		
				if (status == google.maps.GeocoderStatus.OK) {
					$("#song_latitude").val(results[0].geometry.location.lat());
					$("#song_longitude").val(results[0].geometry.location.lng());
				} 
			});
		}		
		return false; 
	});
})
