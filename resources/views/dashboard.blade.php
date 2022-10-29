@section('scripts')
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