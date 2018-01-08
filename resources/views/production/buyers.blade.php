@extends('layouts.dashboard.main')
@section('content')
    <div class="row" ng-controller="BuyingOrderController" ng-init="ordersSummery()">
        <div class="col-sm-12"><div class="col-sm-6 text-left"><h4 class="header">{{Route::currentRouteName()}}</h4></div>
            <a class="waves-effect waves-light btn modal-trigger" href="#add-buyer-modal"> Add Buyer</a>
            
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
                        <li><a class="waves-effect waves-light btn modal-trigger btn-floating red" href="#add-buyer-modal"><i class="large mdi-content-add"></i></a></li>
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
                                <th>Contact Person</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Website</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th>Name</th>
                                <th>Contact Person</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Website</th>
                                <th>Action</th>
                            </tr>
                        </tfoot>

                        <tbody>
                            @foreach($buyers as $buyer)
                                <tr>
                                    <td>{{ $buyer->buyer_name }}</td>
                                    <td>{{ $buyer->contact_person }}</td>
                                    <td>{{ $buyer->email_address }}</td>
                                    <td>{{ $buyer->contact_number }}</td>
                                    <td>{{ $buyer->website }}</td>
                                    <td>
                                        <a href="{{ url('buying/buyer/'.$buyer->id) }}" class="waves-effect waves-light light-blue darken-4  btn"><i class="mdi-image-remove-red-eye"></i></a>
                                        <a class="btn waves-effect waves-light red"><i class="mdi-content-remove-circle-outline"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                @include('partials.orders_summery')
            </div>
        </div>

        <div id="add-buyer-modal" class="modal modal-fixed-footer">
            <div class="modal-content">
                <button class="btn waves-effect waves-light green darken-1" >Add Buyer</button>
                <form class="col s12" name="myForm">
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="order.buyer_name" name="buyer_name" type="text">
                            <label>Buyer Name</label>
                        </div>

                        <div class="input-field col s6">
                            <input ng-model="order.contact_person" name="contact_person" type="text">
                            <label>Contact Person</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="order.email_address" name="email_address" type="text">
                            <label>Email Address</label>
                        </div>
                        <div class="input-field col s6">
                            <input ng-model="order.contact_number" name="contact_number" type="text">
                            <label>Phone</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="order.website" name="website"  type="text">
                            <label>Website</label>
                        </div>
                        <div class="input-field col s6">
                            <input ng-model="order.postal_address" name="postal_address"  type="text">
                            <label>	Address</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Cancel</a>
                <a href="#" class="waves-effect waves-light light-blue btn modal-action modal-close" ng-click="add_buyer(myForm)">Add</a>
            </div>
        </div>
    </div>
@endsection