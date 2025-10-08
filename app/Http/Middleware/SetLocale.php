<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class SetLocale
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Default to Polish if no session is set
        $locale = session('locale', 'pl');

        // Get locale from URL parameter if present
        if ($request->has('lang') && in_array($request->lang, ['en', 'pl', 'nl'])) {
            $locale = $request->lang;
            session(['locale' => $locale]);
        }

        app()->setLocale($locale);

        return $next($request);
    }
}
