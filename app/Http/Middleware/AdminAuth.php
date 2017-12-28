<?php

namespace App\Http\Middleware;

use Closure;
use Auth;

class AdminAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // if(Auth::guest()){
        //     return redirect('/');
        // }

        if(Auth::user()->role->roles !== 'admin'){

            return redirect('/home');
        }

        return $next($request);
    }
}
