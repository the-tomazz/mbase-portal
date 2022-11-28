{{--
HOW TO USE

1.
Include this template in the layouts() with:
Layout::view('mapdisplay')

Do not forget the use: use Orchid\Support\Facades\Layout;

2. Somehow output the markers into HTML ANYWHERE by printing:

<script>
var markers = [
	{ lat: 46.1209, lng: 14.8156 },
	{ lat: 46.2315, lng: 14.8456 },
	{ lat: 46.3315, lng: 14.8456 },
	... all your markers
];
</script>

That should be it.

3. MAKE SURE THE API KEY IS OK! (see line 40)


--}}
<script>
	var markers = [
@foreach ($animalHandlings as $animalHandling)
		{{'{'}} lat: {{$animalHandling->lat}}, lng: {{$animalHandling->lng}} {{'}'}},
@endforeach
	];
</script>

<div>
	<style>
		#map {
			height: 400px;
			/* The height is 400 pixels */
			width: 100%;
			/* The width is the width of the web page */
			margin-bottom: 15px;
		}
	</style>

	<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCIkGfNH8Rqht-VeBTJLvnmQ2F82Vzp5-E&callback=initMap&v=weekly"
		defer></script>

	<script>
		// var markers = [
		// 	{ lat: 46.1209, lng: 14.8156 },
		// 	{ lat: 46.2315, lng: 14.8456 },
		// 	{ lat: 46.3315, lng: 14.8456 }
		// ];

		function initMap() {
			console.log("Initializing map");

			const center = { lat: 46.1203, lng: 14.8156 };
			const map = new google.maps.Map(document.getElementById("map"), {
				zoom: 8,
				center: center,
			});

			markers.forEach(element => {
				const marker = new google.maps.Marker({
				position: element,
				map: map,
				});
			});
		}

		window.initMap = initMap;

	</script>

	<div id="map"></div>


</div>
