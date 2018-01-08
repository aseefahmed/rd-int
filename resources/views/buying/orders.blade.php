@extends('layouts.dashboard.main')
@section('content')
    <div class="row" ng-controller="BuyingOrderController" ng-init="ordersSummery()">
        <div class="col-sm-12"><div class="col-sm-6 text-left"><h4 class="header">{{Route::currentRouteName()}}</h4></div>
            <a class="waves-effect waves-light btn modal-trigger" href="#add-order-modal"> Add Order</a>
            <a class="btn waves-effect waves-light green darken-1" href="{{url('report/orders')}}">Download</a>
            
            
            {{-- <div class="col-sm-6 text-right">
                <div class="fixed-action-btn horizontal">
                    <a class="btn-floating btn-large red">
                        <i class="mdi-social-notifications-none"></i>
                    </a>
                    <ul>
                        <li><a class="btn-floating yellow darken-1"><i class="large mdi-editor-format-quote"></i></a></li>
                        <li><a class="btn-floating green"><i class="large mdi-editor-publish"></i></a>
                        </li><li><a class="btn-floating blue"><i class="large mdi-editor-attach-file"></i></a></li>
                        <li><a class="waves-effect waves-light btn modal-trigger btn-floating red" href="#add-order-modal"><i class="large mdi-content-add"></i></a></li>
                    </ul>
                </div>
            </div> --}}
            
            <ol class="breadcrumbs">
                <li><a href="{{url('dashboard')}}">Home</a></li>
                <li>{{Route::currentRouteName()}}</li>
            </ol>
            <div class="divider"></div>
            <div class="row">
                <div class="col s12">
                    <div id="jsGrid-basic"></div>
                </div>
                {{-- @include('partials.orders_summery') --}}
            </div>
        </div>

        <div id="add-order-modal" class="modal modal-fixed-footer">
            <div class="modal-content">
                <button class="btn waves-effect waves-light green darken-1" >Add Order</button>
    
                <form class="col s12" name="myForm">
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="order.style" name="style" type="text">
                            <label>Style</label>
                        </div>

                        <div class="input-field col s6">
                            <input ng-model="order.ref" name="ref" type="text">
                            <label>Reference</label>
                        </div>
                    </div>

                    <div class="row">

                        <div class="input-field col s6">
                            <input ng-model="order.contract_weight" name="contract_weight"  type="text">
                            <label>Contract weight</label>
                        </div>

                        <div class="input-field col s6">
                            <input ng-model="order.gauge" name="gauge" type="text">
                            <label>Gauge</label>
                        </div>
                        {{--<div class="input-field col s6">
                            <input ng-model="order.qty" name="qty"  type="text">
                            <label>Qty</label>
                        </div>--}}
                    </div>
                    <div class="row">
                        

                        <div class="input-field col s6">
                            <select  page="orders" name="yarn_ref_details" id="yarn_ref_details">
                                <option value="0">Chose Yarn Code</option>
                                @foreach($yarnlist as $yarn)
                                    <option value="{{ $yarn->id}}" >{{ $yarn->yarn_code }}</option>
                                @endforeach
                            </select>
                            <label>Yarn(Ref. Details)</label>
                        </div>

                        <div class="input-field col s6">
                            <select ng-model="order.order_sizes" multiple name="order_size" id="order_size">
                                <option value="0">Size Ranges</option>
                                @foreach($sizes as $size)
                                    <option value="{{ $size->size}}" >{{ $size->size }}</option>
                                @endforeach
                            </select>
                            <label>Size Ranges</label>
                        </div>
                    </div>

                    <div class="row" id="row1" style="display: none;">
                        
                    </div>
                   {{-- <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="order.sizing" name="sizing"  type="text">
                            <label>Sizing</label>
                        </div>
                        <div class="input-field col s6">
                            <input ng-model="order.main_label" name="main_label"  type="text">
                            <label>Main Label</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="order.hang_tag" name="hang_tag"  type="text">
                            <label>Hang Tag</label>
                        </div>
                    </div>--}}
                </form>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Cancel</a>
                <a href="#" class="waves-effect waves-light light-blue btn modal-action modal-close" ng-click="add_buying_order(myForm)">Add</a>
            </div>
        </div>
    </div>
@endsection