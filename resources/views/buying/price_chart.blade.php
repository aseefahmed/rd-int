@extends('layouts.dashboard.main')
@section('content')
    <div class="row" ng-controller="HrmController" ng-init="ordersSummery()">
        <div class="col-sm-12">
            <div class="col-sm-6 text-left"><h4 class="header">Price Chart: {{ $order[0]->style }}</h4></div>
            <div class="col-sm-6 text-right">
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
            </div>
            <ol class="breadcrumbs">
                <li><a href="index.html">Dashboard</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Basic Tables</li>
            </ol>
            <div class="divider"></div>
            <div class="row">
                <div class="col s8">
                    <form class="col s12" name="myForm" id="myForm">
                        {{ csrf_field() }}
                        <?php
                            if($pricechart_count > 0){
                                $pricechart = json_decode($price_chart[0]->price_details, true);
                            }
                        ?>
                        <input type="hidden" name="orderid" id="orderid" value="{{ $order[0]->id }}">
                        <table id="data-table-simple" class="responsive-table display" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Factory</th>
                                <th>Price($)</th>
                                <th>Weight(lbs)</th>
                                <th>Confirm</th>
                            </tr>
                        </thead>

                        <tfoot>
                            <tr>
                                <th>Factory</th>
                                <th>Price($)</th>
                                <th>Weight(lbs)</th>
                                <th>Confirm</th>
                            </tr>
                        </tfoot>

                        <tbody>
                            @foreach($suppliers as $supplier)
                                <tr>
                                    <th>
                                        {{ $supplier->supplier_name }}
                                        <input type="hidden" name="supplier_name[{{ $supplier->id }}]" value="{{ $supplier->id  }}">
                                    </th>
                                    <th>
                                        @if(!isset($pricechart['price'][$supplier->id ]))
                                            <input  type="number" name="price[{{ $supplier->id }}]" id="price[{{ $supplier->id }}]">
                                        @else
                                            <input  type="number"  id="price_{{ $supplier->id }}" name="price[{{ $supplier->id }}]" value="{{ $pricechart['price'][$supplier->id ] }}">
                                        @endif
                                    </th>
                                    <th>
                                        @if(!isset($pricechart['price'][$supplier->id ]))
                                            <input  type="number" name="weight[{{ $supplier->id }}]">
                                        @else
                                            <input  type="number" name="weight[{{ $supplier->id }}]" value="{{ $pricechart['weight'][$supplier->id ] }}">
                                        @endif
                                    </th>
                                    <th>
                                        @if(isset($price_chart[0]   ) && $price_chart[0]->confirmed_supplier == $supplier->id)
                                            <a supplier_id="{{ $supplier->id }}" class="waves-effect waves-light green darken-4  btn confirm_price_btn"><i class="mdi-action-assignment-turned-in"></i></a>
                                        @else
                                            <a supplier_id="{{ $supplier->id }}" class="waves-effect waves-light red darken-4  btn confirm_price_btn"><i class="mdi-action-assignment-turned-in"></i></a>
                                        @endif
                                    </th>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                        <p><a id="pricechart_save_btn" class="waves-effect waves-light  btn">Save</a></p>
                    </form>

                </div>
                @include('partials.orders_summery')
            </div>
        </div>

    </div>
@endsection