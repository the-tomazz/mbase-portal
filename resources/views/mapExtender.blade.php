@push('head')
<script>
	function extendMap() {
		var map = window.application.getControllerForElementAndIdentifier(document.querySelector('[data-controller="map"]'), "map").leafletMap;

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

	const debounce = (callback, time) => {
		let timeout;

		return (argument) => {
			clearTimeout(timeout);
			timeout = setTimeout(() => callback(argument), time);
		};
	};

	const debouncedExtendMap = debounce(extendMap, 1000);

	function startExtendMap() {
		console.log("Setting up map extensions");

		(async () => {
			let sleepTime = 100;
			while (!checkIfMapIsSetup()) {
				console.log("Map not setup yet, waiting " + sleepTime + "ms");
				await sleep(sleepTime);
				sleepTime *= 1.5;
			}

			console.log("Map is setup, extending");

			debouncedExtendMap();
		})();
	}

	function checkIfMapIsSetup() {
		if (!window.application) {
			console.log("window.application not set");
			return false;
		}

		if (window.application.getControllerForElementAndIdentifier(document.querySelector('[data-controller="map"]'), "map") == null) {
			console.log("getController returned null");
			return false;
		}

		if (window.application.getControllerForElementAndIdentifier(document.querySelector('[data-controller="map"]'), "map").leafletMap == null) {
			console.log("leafletMap not set");
			return false;
		}

		return true;
	}

	function sleep(ms) {
		return new Promise(resolve => setTimeout(resolve, ms));
	}



</script>

@endpush