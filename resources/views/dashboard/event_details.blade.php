@extends('layouts.dashboard.main')
@section('content')
    <div id="full-calendar">
        <div class="row">
            <div class="col s12 m4 l3">
                <ul id="task-card" class="collection with-header">
                    <li class="collection-header cyan">
                        <div class="task-card-title">This Month Events</div>
                    </li>
                    @if(count($this_month_event) == 0)
                        <li class="collection-item dismissable">
                            <input type="checkbox" id="task13" />
                            <label for="task1">No events scheduled this month.</label>
                        </li>
                    @endif
                    @foreach($this_month_event as $key=>$evt)
                        <li class="collection-item dismissable">
                            <input type="checkbox" id="task13" />
                            <label for="task1">
                                {{ $evt->title }} ({{ date_format(date_create($evt->start), 'jS M') }})
                                <a href="{{ url('/dashboard/event/'.Auth::user()->id.'/'.$evt->reference) }}" class="btn-floating waves-effect waves-light  blue darken-4"><i class="mdi-image-remove-red-eye"></i></a>
                            </label>
                        </li>
                    @endforeach
                    <li class="collection-item dismissable">
                        <a class="waves-effect waves-light btn modal-trigger" href="#add-event-modal"><i class="mdi-content-add left"></i>Add Event</a>
                    </li>
                </ul>
            </div>
            <div class="col s12 m8 l9">
                <div id="card-alert" class="card green">
                    <div class="card-content white-text">
                        <p><i class="mdi-notification-event-note"></i> Event Details</p>
                    </div>
                </div>
                <ul id="task-card" class="collection with-header">
                    <li class="collection-header cyan">
                        <h4 class="task-card-title">{{ $event[0]->title }}</h4>
                        <p class="task-card-date"><i class="mdi-image-timer"></i>{{ date_format(date_create($event[0]->start), 'jS M, Y') }} - {{ date_format(date_create($event[0]->end), 'jS M, Y') }}</p>
                    </li>
                    @foreach($event as $evt)
                        <li class="collection-item dismissable">
                            <input type="checkbox"/>
                            <label for="task1">
                                {{ $evt->name }}
                            </label>
                            @if($evt->flag == 0)
                                <span class="task-cat teal">Decission Not Made Yet</span>
                            @elseif($evt->flag == 1)
                                <span class="task-cat blue">Attending</span>
                            @elseif($evt->flag == 2)
                                <span class="task-cat red">Not Attending</span>
                            @endif
                        </li>
                    @endforeach
                </ul>

            </div>
        </div>
        <div id="add-event-modal" class="modal modal-fixed-footer">
            <div class="modal-content">
                <form class="col s12" name="myForm" id="myForm">
                    <input type="hidden" name="id" id="emp_id" value="{{ Auth::user()->id }}">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="input-field col s6">
                            <input  ng-required="true" ng-model="event.title" name="title" type="text">
                            <label>Title</label>
                        </div>

                        <div class="input-field col s6">
                            <select ng-model="color" ng-required="true" name="color" class="pick_color" id="pick_color">
                                <option value="">Pick a color</option>
                                <option value="#ff0000">Red</option>
                                <option value="#4682B4">Blue</option>
                                <option value="#008000">Green</option>
                                <option value="#FF1493">Pink</option>
                                <option value="#9400D3">DARKVIOLET</option>
                                <option value="#556B2F">DARKOLIVEGREEN</option>
                                <option value="#008080">TEAL</option>
                                <option value="#00FFFF">AQUA</option>
                                <option value="#FF5733">Orange</option>
                            </select>
                            <label>Color</label>
                        </div>

                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <input  name="start" type="text" class="datetimepicker">
                            <label>Start Date</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="end" type="text" class="datetimepicker">
                            <label>End Date</label>
                        </div>
                    </div>
                    <div class="row">
                        <div>
                            <select name="users[]"  multiple>
                                <option disabled selected>Choose users....</option>
                                @foreach($users as $user)
                                    <option value="{{ $user->id }}">{{ $user->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <input name="tooltip" type="text">
                            <label>Short Description</label>
                        </div>

                        <div  class="input-field col s12">
                            <div id="color_div" style="display: none; background: #ff0000; width: 100%; height: 120px;">&nbsp;</div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer green lighten-4">
                <a href="#" class="waves-effect waves-red btn modal-action modal-close">Disagree</a>
                <button href="#" class="waves-effect waves-light light-blue btn modal-action modal-close" id="add_evt_btn" ng-disabled="myForm.$invalid">Agree</button>
            </div>
        </div>
    </div>

@endsection