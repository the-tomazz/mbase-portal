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
		title:
			'<b>{{__("Animal ID")}}: </b>{{$animalHandling->animal_id}}</br>' +
			'<b>{{__("Animal name")}}:</b> {{$animalHandling->animal->name}}<br>' +
			'<b>{{__("Animal handling ID")}}:</b> {{$animalHandling->animal_id}}</br>' +
			'<b>{{__("Handling date")}}:</b> {{(new DateTime($animalHandling->animal_handling_date))->format("d.m.Y H:i")}}<br>' +
			@if($animalHandling->way_of_withdrawal_list)
				'<br><b>{{__("Way of withdrawal")}}: </b>{{$animalHandling->way_of_withdrawal_list->name}}' +
			@endif
			@if($animalHandling->conflict_animal_removal_list)
				'<br><b>{{__("Type of legal cull")}}: </b>{{$animalHandling->conflict_animal_removal_list->name}}' +
			@endif
			@if($animalHandling->biometry_loss_reason_list)
				'<br><b>{{__("Loss reason")}}: </b>{{$animalHandling->biometry_loss_reason_list->name}}' +
			@endif
			''
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

		baseMaps = {
			"OpenStreetMap": L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
				attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
			}),
			"GURS": L.tileLayer.wms("http://prostor4.gov.si:80/ows2-m-pub/wms?", {
				layers:"SI.GURS.ZPDZ:DOF050",
				attribution: '<a href="http://www.e-prostor.gov.si/dostop-do-podatkov/dostop-do-podatkov/#c501">Geodetska uprava Republike Slovenije</a>'
			})
		};

		overlays = {
			"Občine":  L.tileLayer.wms("http://prostor4.gov.si:80/ows2-m-pub/wms?", {
				layers:"table_gurs_pub:SI.GURS.RPE.LS",
				format: "image/png",
				transparent: "true",
				attribution: '<a href="http://www.e-prostor.gov.si/dostop-do-podatkov/dostop-do-podatkov/#c501">Geodetska uprava Republike Slovenije</a>'
			})
		};

		L.control.layers(baseMaps, overlays).addTo(map);

		markers.forEach(element => {
			L.marker([element.position.lat, element.position.lng]).addTo(map)
			.bindPopup(element.title);
		});
	}

	document.addEventListener("turbo:load", () => {
		console.log("Setting up map init");
		initMap();
	})
</script>

@endpush

<div>
	<div id="map"></div>
</div>
