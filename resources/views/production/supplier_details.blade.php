@extends('layouts.dashboard.main')
@section('content')

    <form class="col s12" id="edit_supplier_form">
        <div class="row" ng-controller="BuyingOrderController"  ng-init="getSummery({{ $suppliers[0]->id }})">
        <div class="col-sm-12">
            <div class="col-sm-6 text-left"><h4 class="header">Supplier Details</h4></div>
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
                            <input type="hidden" name="id" value="{{ $suppliers[0]->id }}">
                            <div class="input-field col s6">
                                <input name="supplier_name" type="text" value="{{ $suppliers[0]->supplier_name }}">
                                <label>Name</label>
                            </div>

                            <div class="input-field col s6">
                                <input name="contact_person" type="text" value="{{ $suppliers[0]->contact_person }}">
                                <label>Contact Person</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s4">
                                <input name="contact_number" type="text" value="{{ $suppliers[0]->contact_number }}">
                                <label>Phone</label>
                            </div>
                            <div class="input-field col s4">
                                <input name="email_address" type="text" value="{{ $suppliers[0]->email_address }}">
                                <label>Email Address</label>
                            </div>

                            <div class="input-field col s4">
                                <input name="website" type="text" value="{{ $suppliers[0]->website }}">
                                <label>Website</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input name="postal_address" type="text" value="{{ $suppliers[0]->postal_address }}">
                                <label>Address</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s6">
                                <select name="merchandiser_id">
                                    @foreach($merchandisers as $merchandiser)
                                        <option value="{{ $merchandiser->id}}"  <?php if($merchandiser->id == $suppliers[0]->merchandiser_id){echo "selected";} ?>>{{ $merchandiser->name }}</option>
                                    @endforeach
                                </select>
                                <label>Merchandiser</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <button class="btn cyan waves-effect waves-light right" type="submit" id="edit_supplier" name="action">Edit
                                    <i class="mdi-content-send right"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                @include('partials.summeries')
            </div>

        </div>

        </div>
    </form>
@endsection