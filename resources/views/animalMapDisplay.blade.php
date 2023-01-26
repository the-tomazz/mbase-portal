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


@push('head')
<script>
	var markers = [
@foreach ($animals as $animal)
@foreach ($animal->bearsBiometryAnimalHandlings as $animalHandling)
	{{'{'}}
		position: {{'{'}}
			lat: {{$animalHandling->lat}}, lng: {{$animalHandling->lng}}
		{{'}'}},
		title: '{{$animal->name}}<br>{{$animalHandling->animal_handling_date}}<br>{{$animalHandling->hunting_management_area}}'
	{{'}'}},
@endforeach
@endforeach
	];
</script>

<style>
	#map {
		height: 400px;
		/* The height is 400 pixels */
		width: 100%;
		/* The width is the width of the web page */
		margin-bottom: 15px;
	}
</style>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.3/dist/leaflet.css"
	integrity="sha256-kLaT2GOSpHechhsozzB+flnD+zUyjE2LlfWPgU04xyI=" crossorigin="" />
<script src="https://unpkg.com/leaflet@1.9.3/dist/leaflet.js"
	integrity="sha256-WBkoXOwTeyKclOHuWtc+i2uENFpDZ9YPdf5Hf+D7ewM=" crossorigin=""></script>

<script>
	function initMap() {
		console.log("Initializing map");
		const center = { lat: 46.1203, lng: 14.8156 };

		var map = L.map('map').setView([center.lat, center.lng], 8);

		L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
		attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(map);

		markers.forEach(element => {
			L.marker([element.position.lat, element.position.lng]).addTo(map)
			.bindPopup(element.title);
		});
	}

	// window.onload = initMap;
	setTimeout(() => {
		console.log("Setting up map init");
		initMap();
	}, "1500")
</script>

@endpush

<div>
	<div id="map"></div>
</div>
