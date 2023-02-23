@push('head')
<script>
	function extendMap() {
		var map = window.application.getControllerForElementAndIdentifier(document.querySelector('[data-controller="map"]'), "map").leafletMap;

		/* L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
			attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
		}).addTo(map); */

		baseMaps = {
			"OpenStreetMap": L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
				attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
			}),
			"DOF": L.tileLayer.wms("http://prostor4.gov.si:80/ows2-m-pub/wms?", {
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
	}

	document.addEventListener("turbo:load", () => {
		console.log("Setting up map extensions");
		extendMap();
	})
</script>

@endpush
