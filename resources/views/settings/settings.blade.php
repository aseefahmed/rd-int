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
                <li><a href="#">Home</a></li>
                <li><a href="#">Settings</a></li>
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
                                                <li class="tab col s3"><a style="background-color: purple; color: #fff" href="#tab1"><i class="mdi-action-perm-identity"></i> Basic Information</a></li>
                                                <li class="tab col s3"><a style="background-color: green; color: #fff" href="#tab2"><i class="mdi-action-perm-identity"></i> Document Type</a></li>
                                                <li class="tab col s3"><a style="background-color: darkred; color: #fff" href="#tab3"><i class="mdi-action-perm-identity"></i> Sizes</a></li>
                                            </ul>
                                        </div>
                                        <div class="col s12">
                                                <div id="tab1" class="col s12 active">
                                                    <div class="row">
                                                        <form class="col s12" name="basic_info" id="basic_info">
                                                          <div class="row">
                                                            <div class="input-field col s6">
                                                              <input id="first_name" type="text" class="validate">
                                                              <label for="first_name">Company Name</label>
                                                            </div>
                                                            <div class="input-field col s6">
                                                              <input id="last_name" type="text" class="validate">
                                                              <label for="last_name">Email</label>
                                                            </div>
                                                          </div>
                                                          <div class="row">
                                                            <div class="input-field col s12">
                                                              <textarea name="address" class="materialize-textarea"></textarea>
                                                              
                                                              <label for="disabled">Address</label>
                                                            </div>
                                                          </div>
                                                          <div class="row">
                                                            <div class="input-field col s6">
                                                              <input id="password" type="text" class="validate">
                                                              <label for="password">Telephone</label>
                                                            </div>
                                                            <div class="input-field col s6">
                                                              <input id="email" type="text" class="validate">
                                                              <label for="email">Mobile</label>
                                                            </div>
                                                            <div id="gradient-buttons" class="section">

                                                                <div class="col s12">
                                                                    <a class="waves-effect waves-light btn gradient-45deg-red-pink z-depth-4 mr-1">Save</a>
                                                                    
                                                                </div>
                                                            </div>

                                                          </div>
                                                          
                                                        </form>
                                                    </div>

                                                </div>
                                                <div id="tab2" class="col s12">
                                                    <form class="col s12" name="settings_form" id="settings_form">
                                                    {{csrf_field()}}
                                                       <div class="row">
                                                       <div class="input-field col s2">
                                                                <a supplier_id="4" class="waves-effect waves-light blue darken-4  btn add_doctype_btn"> Add Document Type </a>
                                                            </div>  
                                                            <div class="input-field col s9">
                                                              <input id="new_document_type" name="document_type"  type="text" class="validate">
                                                              <label for="new_document_type">Document Type</label>
                                                            </div> 
                                                        @foreach($doctypes as $doctype)
                                                            <div class="input-field col s2">
                                                                <a href="{{url('settings/remove/doctype/'.$doctype->id)}}"  class="waves-effect waves-light red darken-4  btn"><i class="mdi-content-remove-circle-outline"></i></a>
                                                            </div>  
                                                            <div class="input-field col s9">
                                                              <input id="document_type_{{$doctype->id}}" name="document_type" value="{{$doctype->document_type}}" type="text" class="validate">
                                                              <label for="document_type_{{$doctype->id}}">Document Type</label>
                                                            </div>       
                                                            @endforeach
                                                                                                         
                                                            
                                                          </div>
                                                          
                                                    </form>
                                                </div>
                                                <div id="tab3" class="col s12">
                                                    <form class="col s12" name="size_form" id="size_form">
                                                    {{csrf_field()}}
                                                       <div class="row">
                                                       <div class="input-field col s2">
                                                            <a supplier_id="4" class="waves-effect waves-light blue darken-4  btn add_size_btn"> Add Size </a>
                                                        </div>  
                                                        <div class="input-field col s6">
                                                          <input id="new_size" name="new_size"  type="text" class="validate">
                                                          <label for="new_size">Size Type</label>
                                                        </div>   
                                                        <div class="input-field col s4">
                                                          <input id="new_size_order" name="new_size_order"  type="text" class="validate">
                                                          <label for="new_size_order">Sort Order</label>
                                                        </div>   
                                                        @foreach($sizes as $size)
                                                            <div class="input-field col s2">
                                                                <a href="{{url('settings/remove/size/'.$size->id)}}"  class="waves-effect waves-light red darken-4  btn"><i class="mdi-content-remove-circle-outline"></i></a>
                                                            </div>  
                                                            <div class="input-field col s6">
                                                              <input id="size_type_{{$size->id}}" name="size" size_id="{{$size->id}}" value="{{$size->size}}" type="text" class="validate size_name">
                                                              <label for="size_type_{{$size->id}}">Size</label>
                                                            </div> 
                                                            <div class="input-field col s4">
                                                              <input id="size_sort_{{$size->id}}" name="size_sort_order" size_id="{{$size->id}}"  value="{{$size->sort_order}}" type="text" class="validate size_sort_order">
                                                              <label for="size_sort_{{$size->id}}">Sort Order</label>
                                                            </div>       
                                                        @endforeach
                                                                                                       
                                                            
                                                          </div>
                                                          
                                                    </form>
                                                </div>
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