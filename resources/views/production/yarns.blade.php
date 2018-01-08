@extends('layouts.dashboard.main')
@section('content')
    <div class="row" ng-controller="HrmController" ng-init="ordersSummery()">
        <div class="col-sm-12">

            <div class="col-sm-6 text-left"><h4 class="header">{{Route::currentRouteName()}}</h4></div>
            <a class="waves-effect waves-light btn modal-trigger" href="#add-yarn-modal"> Add Yarn</a>
            <a class="waves-effect orange btn modal-trigger" href="#add-yarn-details-modal"> Add Yarn Details</a>
            <a class="btn waves-effect waves-light green darken-1" href="{{url('download/yarnDetails')}}">Download</a>
            
            
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
                <li><a href="{{url('dashboard')}}">Home</a></li>
                <li>{{Route::currentRouteName()}}</li>
            </ol>
            <div class="divider"></div>
            <div class="row">
                <div class="col s8">
                    <table class="responsive-table display" border="0" cellspacing="0">
                        <thead>
                            <tr>
                                <th style="border: 1px solid #000;">SL</th>
                                <th style="border: 1px solid #000;">Yarn Code</th>
                                <th style="border: 1px solid #000;">Yarn</th>
                                <th style="border: 1px solid #000;">PLY B/D</th>
                                <th style="border: 1px solid #000;">Yarn Content (Care Label)</th>
                                <th style="border: 1px solid #000;">Remarks</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php $row = 1; ?>
                            @foreach($yarns as $index=>$yarn)
                                <?php

                                    $myYarn=getYarnDetails($yarn->yarn_code)[0];
                                    $yarn_codes = yarnCodes($yarn->yarn_code);
                                    $count = count($yarn_codes);
                                    if($count>1){
                                        $count++;
                                    }
                                ?>
                                <tr>
                                    <td style="border: 1px solid #000;" rowspan="{{$count}}"  style="border: 1px solid #000;">{{ $row++ }}</td>
                                    <td style="border: 1px solid #000;" rowspan="{{$count}}">{{ strtoupper($myYarn->yarn_code) }}</td>
                                    <td style="border: 1px solid #000;" rowspan="{{$count}}">{{ strtoupper($myYarn->yarn) }}</td>
                                    @if($count == 1)
                                        <td style="border: 1px solid #000;">{{ strtoupper($yarn_codes[0]->ply_b_d) }}</td>
                                        <td style="border: 1px solid #000;">{{ strtoupper($yarn_codes[0]->yarn_content) }}</td>
                                        <td style="border: 1px solid #000;">{{ strtoupper($yarn_codes[0]->remarks) }}</td>
                                        
                                    @endif

                                </tr>
                                @if($count > 1)
                                    @foreach($yarn_codes as $key=>$y)
                                        <tr>
                                            <td style="border: 1px solid #000;">{{ strtoupper($y->ply_b_d) }}</td>
                                            <td style="border: 1px solid #000;">{{ strtoupper($y->yarn_content) }}</td>
                                            <td style="border: 1px solid #000;">{{ strtoupper($y->remarks) }}</td>
                                        </tr>
                                    @endforeach
                                @endif

                            @endforeach
                            @if(count($yarns)==0)
                            <tr class="odd" style="background-color: #f9f9f9"><td valign="top" colspan="4" class="dataTables_empty">No matching records found</td></tr>
                            @endif
                        </tbody>
                    </table>
                </div>
                @include('partials.orders_summery')
            </div>
        </div>

        <div id="add-yarn-modal" class="modal modal-fixed-footer">
            <div class="modal-content">
                <button class="btn waves-effect waves-light green darken-1" >Add Yarn</button>

                <form class="col s12" name="yarnForm" id="yarnForm">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="yarn.code" ng-required="true" name="yarn_code" type="text">
                            <label>Yarn Code</label>
                        </div>

                        <div class="input-field col s6">
                            <input ng-model="yarn.name" ng-required="true" name="yarn_name" type="text">
                            <label>Yarn</label>
                        </div>
                    </div>
                    
                </form>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Cancel</a>
                <button ng-disabled="yarnForm.$invalid" class="waves-effect waves-light light-blue btn modal-action modal-close" id="yarn_add_btn">Add</button>
            </div>
        </div>
        <div id="add-yarn-details-modal" class="modal modal-fixed-footer">
            <div class="modal-content">
                <button class="btn waves-effect waves-light green darken-1" >Add Yarn Details</button>

                <form class="col s12" name="yarnDetailsForm" id="yarnDetailsForm">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="input-field col s6">
                            <select name="yarn_code" id="yarn_code">
                                <option value="0">Chose Yarn Code</option>
                                @foreach($yarnlist as $yarn)
                                    <option value="{{ $yarn->id}}" >{{ $yarn->yarn_code }}</option>
                                @endforeach
                            </select>
                            <label>Yarn Code</label>
                        </div>

                        <div class="input-field col s6">
                            <input  id="yarn_name" disabled placeholder="Choose Yarn Code" ng-required="true" name="yarn_name" type="text">
                            <label>Yarn</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input ng-model="yarn.ply" ng-required="true"  name="ply"  type="text">
                            <label>PLY B/D</label>
                        </div>
                        <div class="input-field col s6">
                            <input ng-model="yarn.content"   name="content"  type="text">
                            <label>Yarn Content (Care Label)</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input ng-model="yarn.remarks"  name="remarks"  type="text">
                            <label>Remarks</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Cancel</a>
                <button ng-disabled="myForm.$invalid" class="waves-effect waves-light light-blue btn modal-action modal-close" id="yarn_details_add_btn">Add</button>
            </div>
        </div>
    </div>
@endsection