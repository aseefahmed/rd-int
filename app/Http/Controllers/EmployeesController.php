<?php

namespace App\Http\Controllers;

use App\Calendar;
use App\Employee;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class EmployeesController extends Controller
{
    public function viewEmployeesList()
    {
        $data['employees'] = User::all();
        return view('hrm.employees', $data);
    }

    public function getEmployeeDetails($id)
    {
        $data['employees'] = Employee::where('id', $id)->get();
        return view('hrm.employee_details', $data);
    }

    public function storeEmployee(Request $request)
    {
        $user_id = time();
        $user = new User();
        $user->id = $user_id;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->emp_role = $request->emp_role;
        $user->flag = 1;
        $user->password = Hash::make($request->password);
        $user->save();

        $employee = new Employee();
        $employee->id = $user_id;
        $employee->mob = $request->mob;
        $employee->save();

        $calendar = new Calendar();
        $calendar->user_id = Auth::user()->id;
        $calendar->reference = $user_id;
        $calendar->reference_table = "users";
        $calendar->ip_address = $_SERVER['REMOTE_ADDR'];
        $calendar->title = "Created an employee.";
        $calendar->start = date("Y-m-d h:i:s");
        $calendar->color = "#000000";
        $calendar->save();
    }

    public function viewEmployeeDetails($id)
    {
        $data['employees'] = DB::table('users')->join('employees', 'employees.id', '=', 'users.id')->where('users.id', $id)->select('users.*', 'employees.mob')->get();
        $data['user_id'] = $id;
        $data['reference'] = $id;
        return view('hrm.employee_details', $data);
    }

    public function updateEmployeeDetails(Request $request)
    {
        $user = User::find($request->id);
        $user->update($request->all());

        $employee = Employee::find($request->id);

        if($request->photo != ""){
            $file_extension = $request->file('photo')->guessExtension();
            $img_name = time().".".$file_extension;
            $request->file('photo')->move('public/uploaded', $img_name);
        }else{
            $img_name = "";
        }
        $employee->photo = $img_name;

        $employee->update($request->all());

        $calendar = new Calendar();
        $calendar->user_id = Auth::user()->id;
        $calendar->reference = $request->id;
        $calendar->reference_table = "users";
        $calendar->ip_address = $_SERVER['REMOTE_ADDR'];
        $calendar->title = "Updated emplooyee information.";
        $calendar->tooltip = "Updated emplooyee information.";
        $calendar->start = date("Y-m-d h:i:s");
        $calendar->color = "#000000";
        $calendar->save();
    }

    public function getemployeesList()
    {
        $data['employees'] = Employee::all();
        return $data;
    }

}
