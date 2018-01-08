@extends('layouts.dashboard.main')
@section('content')
    <div class="row" ng-controller="ColorController">
        <div class="col-sm-12">
            <div class="col-sm-6 text-right">
                <div class="fixed-action-btn horizontal">
                    <a class="btn-floating btn-large red">
                        <i class="mdi-social-notifications-none"></i>
                    </a>
                    <ul>
                        <li><a class="btn-floating yellow darken-1"><i class="large mdi-editor-format-quote"></i></a></li>
                        <li><a class="btn-floating green"><i class="large mdi-editor-publish"></i></a>
                        </li><li><a class="btn-floating blue"><i class="large mdi-editor-attach-file"></i></a></li>
                        <li><a class="waves-effect waves-light btn modal-trigger btn-floating red" href="#add-color-modal"><i class="large mdi-content-add"></i></a></li>
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
                <div class="col s12">
                    <div>
                        <div id="multi-color-tab" class="section">
                            <div class="row">
                                <div class="col s12 m12">
                                    <div class="row">
                                        <div class="col s12">
                                            <ul class="tabs tab-demo-active z-depth-1">
                                                <?php
                                                $color = ['red', 'blue', 'green', 'black', 'purple', 'pink', 'orange', 'teal'];
                                                $i = 0
                                                ?>
                                                @foreach($yarn_types as $yarn)
                                                    <li class="tab col s3"><a style="background-color: {{ $color[$i]  }}; color: #fff" href="#tab{{ $yarn->id }}"><i class="mdi-action-perm-identity"></i> {{ $yarn->yarn_type }}</a></li>
                                                    <?php $i++; ?>
                                                @endforeach
                                            </ul>
                                        </div>
                                        <div class="col s12">
                                            @foreach($yarn_types as $yarn)
                                                <div id="tab{{ $yarn->id }}" class="col s12">
                                                    <table class="data-table-simple responsive-table display" cellspacing="0" width="100%">
                                                        <thead>
                                                        <tr>
                                                            <th>Color</th>
                                                            <th>Session</th>
                                                            <th>RD Card Date</th>
                                                            <th>L/Dip Req Date</th>
                                                            <th>Received Date</th>
                                                            <th>Sub Date</th>
                                                            <th>Approved Date</th>
                                                            <th>Rejected Date</th>
                                                            <th>Re L/D Rcvd Date</th>
                                                            <th>Re Sub Date</th>
                                                            <th>RS No.</th>
                                                            <th>Card</th>
                                                            <th>Shade</th>
                                                            <th>Status</th>
                                                            <th>Remarks</th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                            @foreach($colors as $color)
                                                                @if($color->yarn_type == $yarn->id)
                                                                    <tr>
                                                                        <td>
                                                                            <a href="{{ url('buying/color/'.$color->id) }}" class="btn waves-effect waves-light indigo">{{ $color->color }}</a>
                                                                        </td>
                                                                        <td>{{ $color->session }}</td>
                                                                        <td>{{ $color->rd_card_dt }}</td>
                                                                        <td>{{ $color->l_dip_req_dT }}</td>
                                                                        <td>{{ $color->received_date }}</td>
                                                                        <td>{{ $color->sub_date }}</td>
                                                                        <td>{{ $color->approved_date }}</td>
                                                                        <td>{{ $color->rejected_date }}</td>
                                                                        <td>{{ $color->re_l_d_rcvd_date }}</td>
                                                                        <td>{{ $color->re_sub_date }}</td>
                                                                        <td>{{ $color->rs_no }}</td>
                                                                        <td>{{ $color->card }}</td>
                                                                        <td>{{ $color->shade }}</td>
                                                                        <td>{{ $color->status }}</td>
                                                                        <td>{{ $color->remarks }}</td>
                                                                    </tr>
                                                                @endif
                                                            @endforeach
                                                        </tbody>
                                                    </table>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div id="add-color-modal" class="modal modal-fixed-footer" style="height: 40%">
            <div class="modal-content">
                <div class="row">
                    <div class="input-field col s6">
                        <input ng-model="color.color_name" name="style" type="text">
                        <label>Color</label>
                    </div>

                </div>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Disagree</a>
                <a href="#" class="waves-effect waves-light light-blue btn modal-action modal-close" ng-click="add_color()">Agree</a>
            </div>
        </div>
    </div>

@endsection