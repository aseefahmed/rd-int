<?php

namespace App\Http\Controllers;

use App\Calendar;
use App\User;
use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function index()
    {
    	return view('login.index');
    }

    public function processLogin(Request $request){
     
        if(Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
        	if(Auth::user()->flag == 0)
            {
                 return -2;   
            }
            else
            {
                $user = User::find(Auth::user()->id);
                $user->logged_in = 1;
                $user->save();

                $calendar = new Calendar();
                $calendar->user_id = Auth::user()->id;
                $calendar->reference = Auth::user()->id;
                $calendar->reference_table = "users";
                $calendar->ip_address = $_SERVER['REMOTE_ADDR'];
                $calendar->title = "Logged in";
                $calendar->start = date("Y-m-d h:i:s");
                $calendar->color = "#000000";
                $calendar->save();
            }
        }
        else
        {
            return -1;
        }
    }
}
