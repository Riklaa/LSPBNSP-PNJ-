<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Symfony\Component\HttpFoundation\Response;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {

        if (!Auth::guard('users')->check() ||
        (Auth::guard('users')->user()->role != 'Admin')) {
        return redirect()->route('login')->withErrors('Silahkan Login Dahulu... #1');
        }

        if (Auth::guard('users')->check()) {
            $user = Auth::guard('users')->user();
            // View::share('nama_user', $user->nama_user);
        }

        return $next($request);
    }
}
