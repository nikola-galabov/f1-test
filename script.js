var map;
$(document).ready(function() {
	var origin = "sofia";
	var destination = "pleven";
	calculateAndDisplayRoute(origin, destination);
});

function calculateAndDisplayRoute(origin, destination) {
	var directionsService = new google.maps.DirectionsService;
	var directionsDisplay = new google.maps.DirectionsRenderer;
	map = new google.maps.Map(document.getElementById('map'));

	directionsService.route({
		origin: origin,
		destination: destination,
		travelMode: google.maps.TravelMode.DRIVING
	}, function(response, status) {
		if (status === google.maps.DirectionsStatus.OK) {
			directionsDisplay.setMap(map);
		  	directionsDisplay.setDirections(response);
		} 
	});
}