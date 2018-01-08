@extends('layouts.dashboard.main')
@section('content')
    <form class="col s12" id="edit_color_form" method="post" enctype="multipart/form-data">
    {{ csrf_field() }}
    <div class="row" ng-controller="ColorController">
        <div class="col-sm-12">
            <div class="col-sm-6 text-left">
                <h4 class="header">
                    Color Details
                </h4>
            </div>
            <div class="col-sm-6 text-right">
                <div class="fixed-action-btn horizontal">
                    <a class="btn-floating btn-large red">
                        <i class="mdi-social-notifications-none"></i>
                    </a>
                    <ul>
                        <li><a class="btn-floating green modal-trigger" href="#attach_files"><i class="large mdi-editor-publish"></i></a></li>
                    </ul>
                </div>
            </div>
            <ol class="breadcrumbs">
                <li><a href="index.html">Dashboard</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Basic Tables</li>
            </ol>
            <div class="row">
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content  green white-text">
                            <p class="card-stats-title"><i class="mdi-social-group-add"></i> Progress</p>
                            <h4 class="card-stats-number">4%</h4>
                            <p class="card-stats-compare">Completed</span>
                            </p>
                        </div>
                        <div class="card-action  green darken-2">
                            <div id="clients-bar" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content purple white-text">
                            <p class="card-stats-title"><i class="mdi-editor-attach-money"></i>Total Documents</p>
                            <h4 class="card-stats-number">43</h4>
                            <p class="card-stats-compare">Uploaded</span>
                            </p>
                        </div>
                        <div class="card-action purple darken-2">
                            <div id="sales-compositebar" class="center-align"></div>

                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content blue-grey white-text">
                            <p class="card-stats-title"><i class="mdi-action-trending-up"></i> Shipping Date</p>
                            <h4 class="card-stats-number">2</h4>
                            <p class="card-stats-compare">Days left</span>
                            </p>
                        </div>
                        <div class="card-action blue-grey darken-2">
                            <div id="profit-tristate" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content deep-purple white-text">
                            <p class="card-stats-title"><i class="mdi-editor-insert-drive-file"></i> Last Updated</p>
                            </p>
                        </div>
                        <div class="card-action  deep-purple darken-2">
                            <div id="invoice-line" class="center-align"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div class="divider"></div>
            <div class="row">
                <div class="col s8">
                    <div class="card-panel">
                        <div class="row">
                            <input type="hidden" name="color_id" id="color_id" value="{{ $color[0]->id }}">
                            <div class="row">
                                <div class="input-field col s4">
                                    <select name="yarn_type">
                                        <option value="0">Choose Yarn Type</option>
                                        @foreach($yarn_types as $type)
                                            <option value="{{ $type->id }}" <?php if($type->id == $color[0]->yarn_type){echo "selected";} ?>>{{ $type->yarn_type }}</option>
                                        @endforeach
                                    </select>
                                    <label>Yarn Type</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s4">
                                    <input name="color" type="text" value="{{ $color[0]->color }}">
                                    <label>Color</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="session" type="text" value="{{ $color[0]->session }}">
                                    <label>Session</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="rd_card_dt" type="date" class="datepicker" value="{{ $color[0]->rd_card_dt }}">
                                    <label>RD Card Date</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s4">
                                    <input name="received_date" type="date" class="datepicker" value="{{ $color[0]->received_date }}">
                                    <label>Received Date</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="sub_date" type="date" class="datepicker" value="{{ $color[0]->sub_date }}">
                                    <label>Sub Date</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="approved_date" type="date" class="datepicker" value="{{ $color[0]->approved_date }}">
                                    <label>Approved Date</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s4">
                                    <input name="rejected_date" type="date" class="datepicker" value="{{ $color[0]->rejected_date }}">
                                    <label>Reject Date</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="re_sub_date" type="date" class="datepicker" value="{{ $color[0]->re_sub_date }}">
                                    <label>Re Sub Date</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="l_dip_req_dT" type="date" class="datepicker" value="{{ $color[0]->l_dip_req_dT }}">
                                    <label>L/Dip Req Date</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s4">
                                    <input name="re_l_d_rcvd_date" type="date" class="datepicker" value="{{ $color[0]->re_l_d_rcvd_date }}">
                                    <label>Re L/D Received Date</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="rs_no" type="text" value="{{ $color[0]->rs_no }}">
                                    <label>RS No</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="card" type="text" value="{{ $color[0]->card }}">
                                    <label>Card</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s4">
                                    <input name="shade" type="text" value="{{ $color[0]->shade }}">
                                    <label>Shade</label>
                                </div>

                                <div class="input-field col s4">
                                    <input name="status" type="text" value="{{ $color[0]->status }}">
                                    <label>Status</label>
                                </div>
                            </div>


                            <div class="row">
                                <div class="input-field col s4">
                                    <input name="remarks" type="text" value="{{ $color[0]->remarks }}">
                                    <label>Remarks</label>
                                </div>

                            </div>

                            <div class="row">
                                <div class="input-field col s12">
                                    <button class="btn cyan waves-effect waves-light right" type="submit" id="edit_color" name="action">Edit
                                        <i class="mdi-content-send right"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                @include('partials.orders_summery')
                {{--@include('partials.order_details_partial')
                @include('partials.merchandiser_widget')
                @include('partials.activities')--}}
            </div>

        </div>

    </div>


    </form>
@endsection