<?php
namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Auth;
class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */
    use AuthenticatesUsers;
    
    
    // protected $redirectTo = RouteServiceProvider::HOME;
    public function redirectTo(){
        
        switch(Auth::user()->role){
            case 1:
                session()->flash('message', 'your message');
                $this->redirectTo = '/superadmin';
                
                
                return  $this->redirectTo;
                break;
            case 2:
	 session()->flash('message1', 'your message');
                $this->redirectTo = '/admin';
                return $this->redirectTo;
                break;

            default:
                $this->redirectTo = 'login';
                $this->redirectTo = '/user';
                return $this->redirectTo;
            break;
        }

        
    }

    
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
       
    }
 
}
