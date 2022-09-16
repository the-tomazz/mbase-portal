@section('scripts')
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/dropzone/dist/min/dropzone.min.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/select2/dist/css/select2.min.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/leaflet/dist/leaflet.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/sidebar-v2/leaflet-sidebar.min.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/leaflet.markercluster/dist/MarkerCluster.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/leaflet.markercluster/dist/MarkerCluster.Default.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/patternfly/dist/css/patternfly.min.css"></style>
	<style src="/sites/all/modules/mbase2/frontend-dist/libs/patternfly/dist/css/patternfly-additions.min.css"></style>

	<script src="/sites/all/modules/mbase2/frontend-dist/libs/jquery.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/popper.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/moment.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/dropzone/dist/min/dropzone.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/leaflet/dist/leaflet.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/sidebar-v2/leaflet-sidebar.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/select2/dist/js/select2.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/underscore-min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/leaflet.markercluster/dist/leaflet.markercluster.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/proj4.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/bootstrap.min.js"></script>
	<script src="/sites/all/modules/mbase2/frontend-dist/libs/patternfly/dist/js/patternfly.min.js"></script>

	<script src="/sites/all/modules/mbase2/frontend-dist/main.min.js"></script>
	<script>
		$(function() {
			const moduleContentDiv = document.getElementById('mbaselaravel');
			document.body.appendChild(moduleContentDiv);

			mbase2modules.mbase2_modules().then(module => module.default(
			$(moduleContentDiv),
				'mbase2/map',
				'en',
				`{
					"uid":"1411",
					"name":"user_name",
					"roles":["mbase2_dmg_admin", "mbase2_sop_editor"]
				}`
			));
		});
	</script>
@endsection
<x-app-layout>
    <x-slot name="header">
        <!-- <div style="display: flex; justify-content: space-around; flex-direction: row;">
			<div class="font-semibold text-xl text-gray-800 leading-tight">
				{{ __('Dashboard') }}
			</div>
			@if($isAdmin)
			<div class="font-semibold text-xl text-gray-800 leading-tight">
				<a href="{{ route('platform.main') }}">Admin Panel</a>
			</div>
			@endif
		</div> -->
    </x-slot>
	<div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                @auth
					<div class="p-6 bg-white border-b border-gray-200">
						<p>Locale is: {{ app()->getLocale() }}</p>
					</div>
					<div class="p-6 bg-white border-b border-gray-200">
						<p>Data query:</p>
						<div id="mbaselaravel"></div>
					</div>
				@else
					<div class="p-6 bg-white border-b border-gray-200">
						<p>Please login or register.</p>
						<p>Locale is: {{ app()->getLocale() }}</p>
					</div>
				@endauth
            </div>
        </div>
    </div>
</x-app-layout>
