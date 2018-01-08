<?php

namespace App\Http\Controllers;

use App\Calendar;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CalendarController extends Controller
{
    public function viewCalendar($id)
    {
        $first_date = date_format(date_create(date('Y-m-d')),'Y-m-d');
        $last_date = date_format(date_create(date('Y-m-t')),'Y-m-t');
        $data['id'] = $id;
        $data['users'] = User::where('id', '!=', Auth::user()->id)->get();
        $data['this_month_event'] = $data['events'] = Calendar::where('user_id', $id)->where('activity_type', 'event')->where('start', '>=', $first_date)->where('start', '<=', $last_date)->where('flag', 1)->select('id', 'reference', 'user_id','title', 'start', 'end', 'color', 'tooltip')->get();
        $data['this_month_event_invitations'] = $data['events'] = Calendar::where('user_id', $id)->where('activity_type', 'event')->where('flag', 0)->select('id', 'reference', 'user_id', 'title', 'start', 'end', 'color', 'tooltip')->get();
        return view('dashboard.calendar', $data);
    }

    public function loadEvents($id)
    {
        $data['events'] = Calendar::where('user_id', $id)->where('flag', 1)->select('title', 'start', 'end', 'color', 'tooltip')->get();
        return $data;
    }

    public function changeEventFlag($evt_ref, $user_id, $flag)
    {
        $data['event'] = DB::table('calendars')->where('reference', $evt_ref)->where('user_id', $user_id)->update(
            [
                'flag' => $flag
            ]
        );
    }
    public function viewEventDetails($id,$ref)
    {
        $first_date = date_format(date_create(date('Y-m-d')),'Y-m-d');
        $last_date = date_format(date_create(date('Y-m-t')),'Y-m-t');
        $data['id'] = $id;
        $data['users'] = User::where('id', '!=', Auth::user()->id)->get();
        $data['this_month_event'] = $data['events'] = Calendar::where('user_id', $id)->where('activity_type', 'event')->where('start', '>=', $first_date)->where('start', '<=', $last_date)->where('flag', 1)->select('id', 'reference','title', 'start', 'end', 'color', 'tooltip')->get();
        $data['event'] = DB::table('calendars')->join('users', 'users.id', '=', 'calendars.user_id')->where('calendars.reference', $ref)->select('calendars.*', 'users.name')->get();
        return view('dashboard.event_details', $data);
    }

    public function addEvent(Request $request)
    {
        $unique_id = md5(uniqid());
        if(count($request->users) > 0)
        {
            foreach ($request->users as $user)
            {
                $calendar = new Calendar();
                $calendar->user_id = $user;
                $calendar->title = $request->title;
                $calendar->start = $request->start;
                $calendar->end = $request->end;
                $calendar->color = $request->color;
                $calendar->tooltip = $request->tooltip;
                $calendar->activity_type = 'event';
                $calendar->reference = $unique_id;
                $calendar->flag = 0;
                $calendar->save();
            }
        }

        $calendar = new Calendar();
        $calendar->user_id = Auth::user()->id;
        $calendar->title = $request->title;
        $calendar->start = $request->start;
        $calendar->end = $request->end;
        $calendar->color = $request->color;
        $calendar->tooltip = $request->tooltip;
        $calendar->activity_type = 'event';
        $calendar->reference = $unique_id;
        $calendar->flag = 1;
        $calendar->save();

    }
}
