<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class PreventBruteForceOnAsyncRoute
{
	/**
	 * Handle an incoming request.
	 *
	 * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
	 */
	public function handle(Request $request, Closure $next): Response
	{
		// Retrieve the current route from the request.
		/** @var \Illuminate\Routing\Route|null $route */
		$route = $request->route();

		// Allow requests to routes other than "platform.async".
		if ($route?->getName() !== 'platform.async') {
			return $next($request);
		}

		// Block requests attempting to invoke the "validate" method.
		if ($route->parameter('method') === 'validate') {
			abort(503, 'Access to the "validate" method is restricted.');
		}

		// Continue request processing for other cases.
		return $next($request);
	}
}
