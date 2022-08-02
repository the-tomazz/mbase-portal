<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    @auth
                    You're logged in!!!
                    @else
                    Not logged in!!!!
                    @endauth
                    <br />
                    Locale is: {{ app()->getLocale() }}
					<br>
				<a href="{{ route('platform.main') }}" class="ml-4 text-sm text-gray-700 dark:text-gray-500 underline">Admin</a>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
