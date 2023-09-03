@push('head')
<script>
	function filterByDate() {
		var dateFieldPrefix = '{{$dateFilterVariable}}';
		var dateFieldPrefix2 = '{{$dateFilterVariable2}}';
		var twoFieldPrefixes = dateFieldPrefix2 != '';

		var btn = document.getElementsByClassName('filter_link')[0];

		btn.addEventListener('click', function (event) {
			let fromFieldValue = document.querySelector('[name="' + dateFieldPrefix + '_from"]').value;
			let toFieldValue = document.querySelector('[name="' + dateFieldPrefix + '_to"]').value;

			console.log('fromFieldValue', fromFieldValue);
			console.log('toFieldValue', toFieldValue);

			let fromFieldValue2;
			let toFieldValue2;

			if (twoFieldPrefixes) {
				fromFieldValue2 = document.querySelector('[name="' + dateFieldPrefix2 + '_from"]').value;
				toFieldValue2 = document.querySelector('[name="' + dateFieldPrefix2 + '_to"]').value;
			}

			console.log('fromFieldValue2', fromFieldValue2);
			console.log('toFieldValue2', toFieldValue2);

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

			urlParameterToPosition = finalUrl.indexOf(dateFieldPrefix + '_to');

			if (toFieldValue != "") {
				let to = toFieldValue.substring(6,10) + "-" + toFieldValue.substring(3,5) + "-" + toFieldValue.substring(0,2);

				if (urlParameterToPosition > -1) {
					finalUrl = finalUrl.substr(0, urlParameterToPosition + dateFieldPrefix.length + 4) + to + finalUrl.substr(urlParameterToPosition + dateFieldPrefix.length + 14, 99999);
				} else {
					finalUrl = finalUrl + '&' + dateFieldPrefix + '_to=' + to;
				}
			} else if (urlParameterToPosition > -1) {
				finalUrl = finalUrl.substr(0, urlParameterToPosition - 1) + finalUrl.substr(urlParameterToPosition + dateFieldPrefix.length + 14, 99999);
			}

			if (twoFieldPrefixes) {
				urlParameterFromPosition2 = finalUrl.indexOf(dateFieldPrefix2 + '_from');

				if (fromFieldValue2 != "") {
					let from2 = fromFieldValue2.substring(6,10) + "-" + fromFieldValue2.substring(3,5) + "-" + fromFieldValue2.substring(0,2);


					if (urlParameterFromPosition2 > -1) {
						finalUrl = finalUrl.substr(0, urlParameterFromPosition2 + dateFieldPrefix2.length + 6) + from2 + finalUrl.substr(urlParameterFromPosition2 + dateFieldPrefix2.length + 16, 99999);
					} else {
						finalUrl = finalUrl + '&' + dateFieldPrefix2 + '_from=' + from2;
					}
				} else if (urlParameterFromPosition2 > -1) {
					finalUrl = finalUrl.substr(0, urlParameterFromPosition2 - 1) + finalUrl.substr(urlParameterFromPosition2 + dateFieldPrefix2.length + 16, 99999);
				}

				urlParameterToPosition2 = finalUrl.indexOf(dateFieldPrefix2 + '_to');

				if (toFieldValue2 != "") {
					let to2 = toFieldValue2.substring(6,10) + "-" + toFieldValue2.substring(3,5) + "-" + toFieldValue2.substring(0,2);

					urlParameterToPosition2 = finalUrl.indexOf(dateFieldPrefix2 + '_to');

					if (urlParameterToPosition2 > -1) {
						finalUrl = finalUrl.substr(0, urlParameterToPosition2 + dateFieldPrefix2.length + 4) + to2 + finalUrl.substr(urlParameterToPosition2 + dateFieldPrefix2.length + 14, 99999);
					} else {
						finalUrl = finalUrl + '&' + dateFieldPrefix2 + '_to=' + to2;
					}
				} else if (urlParameterToPosition2 > -1) {
					finalUrl = finalUrl.substr(0, urlParameterToPosition2 - 1) + finalUrl.substr(urlParameterToPosition2 + dateFieldPrefix2.length + 14, 99999);
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

		if (twoFieldPrefixes) {
			if (url.search.indexOf(dateFieldPrefix2 + '_from') > -1) {
				var urlParameterFrom2 = url.search.substring(url.search.indexOf(dateFieldPrefix2 + '_from') + dateFieldPrefix2.length + 6, url.search.indexOf(dateFieldPrefix2 + '_from') + dateFieldPrefix2.length + 16);
				let fromFieldValue2 = urlParameterFrom2.substring(8,10) + "." + urlParameterFrom2.substring(5,7) + "." + urlParameterFrom2.substring(0,4);
				document.querySelector('[name="' + dateFieldPrefix2 + '_from"]').value = fromFieldValue2;
			}

			if (url.search.indexOf(dateFieldPrefix2 + '_to') > -1) {
				var urlParameterTo2 = url.search.substring(url.search.indexOf(dateFieldPrefix2 + '_to') + dateFieldPrefix2.length + 4, url.search.indexOf(dateFieldPrefix2 + '_to') + dateFieldPrefix2.length + 14);
				let toFieldValue2 = urlParameterTo2.substring(8,10) + "." + urlParameterTo2.substring(5,7) + "." + urlParameterTo2.substring(0,4);
				document.querySelector('[name="' + dateFieldPrefix2 + '_to"]').value = toFieldValue2;
			}
		}
	}

	document.addEventListener("turbo:load", () => {
		console.log("Filtering...");
		filterByDate();
	})
</script>

@endpush
