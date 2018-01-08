@extends('layouts.dashboard.main')
@section('content')

    <form class="col s12" id="edit_employee_form" enctype="multipart/form-data">
        <div class="row" ng-controller="BuyingOrderController">
        <div class="col-sm-12">
            <div class="col-sm-6 text-left"><h4 class="header">Employee Details</h4></div>
            <!-- <div class="col-sm-6 text-right">
                <div class="fixed-action-btn horizontal">
                    <a class="btn-floating btn-large red">
                        <i class="mdi-social-notifications-none"></i>
                    </a>
                    <ul>
                        <li><a class="btn-floating green modal-trigger" href="#attach_files"><i class="large mdi-editor-publish"></i></a></li>
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
                    <div class="card-panel">
                        <div class="row">
                            {{ csrf_field() }}
                            <input type="hidden" name="id" id="emp_id" value="{{ $employees[0]->id }}">
                            <div class="input-field col s6">
                                <input name="name" type="text" value="{{ $employees[0]->name }}">
                                <label>Name</label>
                            </div>

                            <div class="input-field col s6">
                                <select name="emp_role">
                                    <option value="">Select Role</option>
                                    <option value="1" <?php if($employees[0]->emp_role == 1){echo "selected";} ?>>Admin</option>
                                    <option value="2" <?php if($employees[0]->emp_role == 2){echo "selected";} ?>>Director</option>
                                    <option value="3" <?php if($employees[0]->emp_role == 3){echo "selected";} ?>>HR Manager</option>
                                    <option value="9" <?php if($employees[0]->emp_role == 9){echo "selected";} ?>>Merchendiser</option>
                                    <option value="10" <?php if($employees[0]->emp_role == 10){echo "selected";} ?>>Visitor</option>
                                </select>
                                <label>Role</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <input name="mob" type="text" value="{{ $employees[0]->mob }}">
                                <label>Phone</label>
                            </div>
                            <div class="input-field col s6">
                                <input name="email" type="text" value="{{ $employees[0]->email}}">
                                <label>Email Address</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <select name="flag">
                                    <option value="">Select Role</option>
                                    <option value="1" <?php if($employees[0]->flag == 1){echo "selected";} ?>>Active</option>
                                    <option value="0" <?php if($employees[0]->flag == 0){echo "selected";} ?>>Inactive</option>
                                </select>
                                <label>Status</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="input_file" name="photo" type="file" class="file-loading">
                                <label class="control-label">Select File</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <button class="btn cyan waves-effect waves-light right" type="submit" id="edit_employee" name="action">Edit
                                    <i class="mdi-content-send right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                @include('partials.merchandiser_widget')
                @include('partials.activities')
            </div>

        </div>

        </div>
    </form>
@endsection