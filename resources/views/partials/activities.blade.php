<div class="col s12 m4 l4">
    <?php
    $result = getOrderActivities($reference);
    ?>
    <ul id="task-card" class="collection with-header">
        <li class="collection-header lime">
            <h4 class="task-card-title">Shipment Dates</h4>
        </li>
        <?php $counter = 0; ?>
         @if($order[0]->handover_date != "0000-00-00")
        <li class="collection-item dismissable">
                <label for="task1">{{++$counter}}) {{ $order[0]->handover_date }}
                    
                </label>
                
            </li>
        @endif
        @foreach($extended_shipment_dates as $key=>$date)
            <li class="collection-item dismissable">
                <label for="task1">{{++$counter}}) {{ $date->shipment_date }}
                    
                </label>
                
            </li>
        @endforeach

        @if($counter == 0)
            <li class="collection-item dismissable">
                <input type="checkbox" id="task13" />
                <label for="task1">No Shipment Date Found.</label>
            </li>
        @endif
       
    </ul>

</div>

<div class="col s12 m4 l4">
    <?php
    $result = getOrderActivities($reference);
    ?>
    <ul id="task-card" class="collection with-header">
        <li class="collection-header cyan">
            <h4 class="task-card-title">Order Activities</h4>
        </li>
        @if(count($result['activities']) == 0)
            <li class="collection-item dismissable">
                <input type="checkbox" id="task13" />
                <label for="task1">No activities found yet.</label>
            </li>
        @endif
        @foreach($result['activities'] as $key=>$activity)
            <li class="collection-item dismissable">
                <input type="checkbox" id="task13" />
                <label for="task1">{{ $activity->title }}
                    <a href="#" class="secondary-content"><span class="ultra-small">{{date_format(date_create($activity->created_at), 'dS M, Y')}}</span></a>
                </label>
                <?php
                    if($activity->ip_address == "127.0.0.1")
                        $activity->ip_address = "114.130.13.193";

                    $details = json_decode(file_get_contents("http://ipinfo.io/{$activity->ip_address}/json"));
                ?>
                <span style="cursor:pointer;" class="task-cat teal tooltipped" data-position="top" data-delay="50" data-tooltip="{{$activity->ip_address}}">From: {{$details->city}}, {{$details->country}}</span>
            </li>
        @endforeach
        <li class="collection-item dismissable">
            <a class="waves-effect waves-light  btn" href="{{ url('dashboard/calendar/'.$reference) }}"><i class="mdi-action-3d-rotation left"></i>View All</a>
        </li>

    </ul>

</div>