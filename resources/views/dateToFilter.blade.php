@push('head')
<script>
	function filterByDate() {
		var dateFieldPrefix = '{{$dateFilterVariable}}'; // "died_at";

		var btn = document.getElementsByClassName(dateFieldPrefix + '_filter_link')[0];

		btn.addEventListener('click', function (event) {
			let fromFieldValue = document.querySelector('[name="' + dateFieldPrefix + '_from"]').value;
			let toFieldValue = document.querySelector('[name="' + dateFieldPrefix + '_to"]').value;

			console.log('fromFieldValue', fromFieldValue);
			console.log('toFieldValue', toFieldValue);

			finalUrl = window.location.href;

			if (finalUrl.indexOf('?') == -1) {
				finalUrl = finalUrl + "?";
			}

			urlParameterFromPosition = finalUrl.indexOf(dateFieldPrefix + '_from');
			if (fromFieldValue != "") {
				let from = fromFieldValue.substring(6,10) + "-" + fromFieldValue.substring(3,5) + "-" + fromFieldValue.substring(0,2);


				if (urlParameterFromPosition > -1) {
					finalUrl = finalUrl.substr(0, urlParameterFromPosition + dateFieldPrefix.length + 6) + from + finalUrl.substr(urlParameterFromPosition + dateFieldPrefix.length + 16, 99999);
				} else {
					finalUrl = finalUrl + '&' + dateFieldPrefix + '_from=' + from;
				}
			} else if (urlParameterFromPosition > -1) {
				finalUrl = finalUrl.substr(0, urlParameterFromPosition - 1) + finalUrl.substr(urlParameterFromPosition + dateFieldPrefix.length + 16, 99999);
			}

			if (toFieldValue != "") {
				let to = toFieldValue.substring(6,10) + "-" + toFieldValue.substring(3,5) + "-" + toFieldValue.substring(0,2);
				urlParameterToPosition = finalUrl.indexOf(dateFieldPrefix + '_to');

				if (urlParameterToPosition > -1) {
					finalUrl = finalUrl.substr(0, urlParameterToPosition + dateFieldPrefix.length + 4) + to + finalUrl.substr(urlParameterToPosition + dateFieldPrefix.length + 14, 99999);
				} else {
					finalUrl = finalUrl + '&' + dateFieldPrefix + '_to=' + to;
				}
			}

			window.location.href = finalUrl;

			event.preventDefault();
		}, false);

		url = window.location;

		if (url.search.indexOf(dateFieldPrefix + '_from') > -1) {
			var urlParameterFrom = url.search.substring(url.search.indexOf(dateFieldPrefix + '_from') + dateFieldPrefix.length + 6, url.search.indexOf(dateFieldPrefix + '_from') + dateFieldPrefix.length + 16);
			let fromFieldValue = urlParameterFrom.substring(8,10) + "." + urlParameterFrom.substring(5,7) + "." + urlParameterFrom.substring(0,4);
			document.querySelector('[name="' + dateFieldPrefix + '_from"]').value = fromFieldValue;
		}

		if (url.search.indexOf(dateFieldPrefix + '_to') > -1) {
			var urlParameterTo = url.search.substring(url.search.indexOf(dateFieldPrefix + '_to') + dateFieldPrefix.length + 4, url.search.indexOf(dateFieldPrefix + '_to') + dateFieldPrefix.length + 14);
			let toFieldValue = urlParameterTo.substring(8,10) + "." + urlParameterTo.substring(5,7) + "." + urlParameterTo.substring(0,4);
			document.querySelector('[name="' + dateFieldPrefix + '_to"]').value = toFieldValue;
		}
	}

	document.addEventListener("turbo:load", () => {
		console.log("Filtering by date");
		filterByDate();
	})
</script>

@endpush
