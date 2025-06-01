<?php
namespace Modules\AdminModule\Http\Middleware;

use Brian2694\Toastr\Facades\Toastr;
use Closure;
use Illuminate\Http\Request;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next) 
    {
        if (auth()->check() && in_array(auth()->user()->user_type, ADMIN_USER_TYPES)) {
            $permissions = auth()->user()->permissions;
    
            if (is_string($permissions)) {
                $userPermissions = json_decode($permissions, true) ?? [];
            } elseif (is_array($permissions)) {
                $userPermissions = $permissions;
            } else {
                $userPermissions = [];
            }
    
            view()->share('userPermissions', $userPermissions);
    
            return $next($request);
        }
    
        Toastr::info(ACCESS_DENIED['message']);
        return redirect('admin/auth/login');
    }
}
