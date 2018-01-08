@extends('layouts.dashboard.main')
@section('content')
    <div class="row" ng-controller="HrmController" ng-init="ordersSummery()">
        <div class="col-sm-12">
            <div class="col-sm-12"><div class="col-sm-6 text-left"><h4 class="header">{{Route::currentRouteName()}}</h4></div>
            <a class="waves-effect waves-light btn modal-trigger" href="#add-employee-modal"> Add Employee</a>
            
        <div class="col-sm-12">
            <!-- <div class="col-sm-6 text-right">
                <div class="fixed-action-btn horizontal">
                    <a class="btn-floating btn-large red">
                        <i class="mdi-social-notifications-none"></i>
                    </a>
                    <ul>
                        <li><a class="btn-floating yellow darken-1"><i class="large mdi-editor-format-quote"></i></a></li>
                        <li><a class="btn-floating green"><i class="large mdi-editor-publish"></i></a>
                        </li><li><a class="btn-floating blue"><i class="large mdi-editor-attach-file"></i></a></li>
                        <li><a class="waves-effect waves-light btn modal-trigger btn-floating red" href="#add-employee-modal"><i class="large mdi-content-add"></i></a></li>
                    </ul>
                </div>
            </div> -->
            <ol class="breadcrumbs">
                <li><a href="{{url('dashboard')}}">Home</a></li>
                <li>{{Route::currentRouteName()}}</li>
            </ol>
            <div class="divider"></div>
            <div class="row">
                <div class="col s8">
                    <table id="data-table-simple" class="responsive-table display" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>

                        <tbody>
                            @foreach($employees as $employee)
                                <tr>
                                    <td>{{ $employee->name }}</td>
                                    <td>{{ $employee->email }}</td>
                                    <td>
                                        <?php
                                            if($employee->emp_role == 1)
                                                $role = "Admin";
                                            else if($employee->emp_role == 2)
                                                $role = "Director";
                                            else if($employee->emp_role == 3)
                                                $role = "HRM";
                                            else if($employee->emp_role == 9)
                                                $role = "Merchandiser";
                                            else if($employee->emp_role == 10)
                                                $role = "Visitor";
                                            else
                                                $role = "Not Defined";
                                        ?>
                                                {{ $role }}
                                    </td>
                                    <td>
                                        <a href="{{ url('hrm/employee/'.$employee->id) }}" class="waves-effect waves-light light-blue darken-4  btn"><i class="mdi-image-remove-red-eye"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                @include('partials.orders_summery')
            </div>
        </div>

        <div id="add-employee-modal" class="modal modal-fixed-footer">
            <div class="modal-content">

                <button class="btn waves-effect waves-light green darken-1" >Add Employee</button>
                <form class="col s12" name="myForm" id="myForm">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="employee.name" ng-required="true" name="name" type="text">
                            <label>Employee Name</label>
                        </div>

                        <div class="input-field col s6">
                            <select ng-model="employee.emp_role" ng-required="true"  name="emp_role">
                                <option value="">Select Role</option>
                                <option value="1">Admin</option>
                                <option value="2">Director</option>
                                <option value="3">HR Manager</option>
                                <option value="9">Merchendiser</option>
                                <option value="10">Visitor</option>
                            </select>
                            <label>Role</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="employee.email" ng-required="true"  name="email"  type="text">
                            <label>Email</label>
                        </div>
                        <div class="input-field col s6">
                            <input ng-model="employee.mob" ng-required="true"  name="mob"  type="text">
                            <label>Phone</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="employee.password" ng-required="true"  name="password"  type="password">
                            <label>Password</label>
                        </div>
                        <div class="input-field col s6">
                            <input nng-model="employee.retype_password" name="retype_password"  type="password">
                            <label>	Re-type Password</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Disagree</a>
                <button ng-disabled="myForm.$invalid" class="waves-effect waves-light light-blue btn modal-action modal-close" id="user_add_btn">Agree</button>
            </div>
        </div>
    </div>
@endsection