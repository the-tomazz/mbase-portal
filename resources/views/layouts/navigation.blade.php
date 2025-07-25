<nav x-data="{ open: false }" class="bg-white border-b border-gray-100">
	<!-- Primary Navigation Menu -->
	<div class="mx-auto px-4 sm:px-8 lg:px-12">
		<div class="flex justify-between h-16">
			<div class="flex">
				<div class="hidden sm:flex sm:items-center sm:ml-6 sm:mr-6">
					<x-dropdown align="left" width="48">
						<x-slot name="trigger">
							<button
								class="flex items-center text-sm font-medium text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300 transition duration-150 ease-in-out">
								<img src="/img/menu.png" alt="Menu" class="max-h-5" />
							</button>
						</x-slot>

						<x-slot name="content">
							<x-dropdown-link :href="route('platform.main')"
								:hidden="request()->routeIs('platform.main')">
								{{ __('Dashboard') }}
							</x-dropdown-link>

							@if (!request()->routeIs('platform.main'))
							<hr />
							@endif

							<x-dropdown-link href="/mbase2/map">
								{{ __('Map') }}
							</x-dropdown-link>

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'mortbiom'))
							<x-dropdown-link
								:href="route('platform.animalHandling.list', ['filter[animal_status]' => Auth::user()->defaultVisualisationAnimalStatus()])">
								{{ __('Mortality and biometry') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'gensam'))
							<x-dropdown-link href="/mbase2/modules/gensam">
								{{ __('Genetic samples') }}
							</x-dropdown-link>
							@endif


							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'ct'))
							<x-dropdown-link href="/mbase2/modules/ct">
								{{ __('Camera Trapping') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'sop'))
							<x-dropdown-link href="/mbase2/modules/sop">
								{{ __('Signs Of Presence') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'cnt'))
							<x-dropdown-link href="/mbase2/modules/cnt">
								{{ __('Counting') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'dmg'))
							<x-dropdown-link href="/mbase2/modules/dmg">
								{{ __('Damages') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'interventions'))
							<x-dropdown-link href="/mbase2/modules/interventions">
								{{ __('Interventions') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'tlm'))
							<x-dropdown-link href="/mbase2/modules/tlm">
								{{ __('Telemetry') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'howling'))
							<x-dropdown-link href="/mbase2/batches/howling">
								{{ __('Howling') }}
							</x-dropdown-link>
							@endif

							@if(Auth::user() && Auth::user()->isInGroup('mbase2', 'mortbiom2'))
							<x-dropdown-link href="/mbase2/modules/mortbiom2">
								{{ __('Mortbiom2') }}
							</x-dropdown-link>
							@endif
						</x-slot>
					</x-dropdown>
				</div>

				<!-- Logo -->
				<div class="shrink-0 flex items-center">
					<a href="{{ route('home') }}">
						<img src="/img/headline_logos.jpg" alt="Logos" class="">
					</a>
				</div>
			</div>


			<!-- Settings Dropdown -->
			<div class="hidden sm:flex sm:items-center sm:ml-6">
				<div class="hidden sm:flex sm:items-center sm:ml-6 sm:mr-6">
					<x-dropdown align="right" width="48">
						<x-slot name="trigger">
							<button
								class="flex items-center text-sm font-medium text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300 transition duration-150 ease-in-out">
								<x-orchid-icon path="globe" class="w-5 h-5 mr-2 text-gray-400"/>
								<div>{{ __('common.changeLanguage') }}</div>

								<div class="ml-1">
									<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg"
										viewBox="0 0 20 20">
										<path fill-rule="evenodd"
											d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
											clip-rule="evenodd" />
									</svg>
								</div>
							</button>
						</x-slot>

						<x-slot name="content">
							@foreach ($languages as $language)
							<x-dropdown-link
								:href="route('locale.change', ['locale' => $language->code, 'ref' => url()->full() ])">
								{{ $language->native_name }}
							</x-dropdown-link>
							@endforeach
						</x-slot>
					</x-dropdown>
				</div>
				@auth
				<x-dropdown align="right" width="48">
					<x-slot name="trigger">
						<button
							class="flex items-center text-sm font-medium text-gray-500 hover:text-gray-700 hover:border-gray-300 focus:outline-none focus:text-gray-700 focus:border-gray-300 transition duration-150 ease-in-out">
							<div>{{ Auth::user() ? Auth::user()->name : null }}</div>

							<div class="ml-1">
								<svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg"
									viewBox="0 0 20 20">
									<path fill-rule="evenodd"
										d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z"
										clip-rule="evenodd" />
								</svg>
							</div>
						</button>
					</x-slot>

					<x-slot name="content">
						<!-- Authentication -->
						<form method="POST" action="{{ route('logout') }}">
							@csrf

							<x-dropdown-link :href="route('logout')" onclick="event.preventDefault();
                                                this.closest('form').submit();">
								{{ __('Log Out') }}
							</x-dropdown-link>
						</form>
					</x-slot>
				</x-dropdown>
				@else
				<a href="{{ route('login') }}" class="text-sm text-gray-700 dark:text-gray-500 underline">{{ __('Log in') }}</a>

				@if (Route::has('register'))
				<a href="{{ route('register') }}"
					class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">{{ __('Register') }}</a>
				@endif
				@endauth
			</div>

			<!-- Hamburger -->
			<div class="-mr-2 flex items-center sm:hidden">
				<button @click="open = ! open"
					class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:bg-gray-100 focus:text-gray-500 transition duration-150 ease-in-out">
					<svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
						<path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex"
							stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
							d="M4 6h16M4 12h16M4 18h16" />
						<path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round"
							stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
					</svg>
				</button>
			</div>
		</div>
	</div>

	<!-- Responsive Navigation Menu -->
	<div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden">
		<div class="pt-2 pb-3 space-y-1">
			<x-responsive-nav-link :href="route('home')" :active="request()->routeIs('home')">
				{{ __('Dashboard') }}
			</x-responsive-nav-link>
		</div>

		<!-- Responsive Settings Options -->
		<div class="pt-4 pb-1 border-t border-gray-200">
			@auth
			<div class="px-4">
				<div class="font-medium text-base text-gray-800">{{ Auth::user() ? Auth::user()->name : null }}</div>
				<div class="font-medium text-sm text-gray-500">{{ Auth::user() ? Auth::user()->email : null}}</div>
			</div>


			<div class="mt-3 space-y-1">
				<!-- Authentication -->
				<form method="POST" action="{{ route('logout') }}">
					@csrf

					<x-responsive-nav-link :href="route('logout')" onclick="event.preventDefault();
                                        this.closest('form').submit();">
						{{ __('Log Out') }}
					</x-responsive-nav-link>
				</form>
			</div>
			@endauth
		</div>
	</div>
</nav>
