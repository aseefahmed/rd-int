<div class="col s12 m4 l4">
    <?php
        $result = getMerchandiserDetails($user_id);
    ?>
    <div id="profile-card" class="card">
        <div class="card-image waves-effect waves-block waves-light">
            <img class="activator" src="http://demo.geekslabs.com/materialize/v3.1/images/user-bg.jpg" alt="user bg">
        </div>
        <div class="card-content">
            <?php
                if($result['info'][0]->photo)
                    $picture_path = 'public/uploaded/'.$result['info'][0]->photo;
                else
                    $picture_path = 'public/images/no-profile.png';
            ?>
            <img src="{{ asset($picture_path) }}" alt="" class="circle responsive-img activator card-profile-image">
            <a class="btn-floating activator btn-move-up waves-effect waves-light darken-2 right">
                <i class="mdi-image-remove-red-eye"></i>
            </a>

            <span class="card-title activator grey-text text-darken-4">{{ $result['info'][0]->name }}</span>
            <p><a class="waves-effect waves-light  btn">Total Orders: {{ $result['total_orders']}}</a></p>
            <p><i class="mdi-action-perm-phone-msg"></i> {{ $result['info'][0]->phone }}</p>
            <p><i class="mdi-communication-email"></i> {{ $result['info'][0]->email }}</p>

        </div>
        <div class="card-reveal">
            <span class="card-title grey-text text-darken-4">{{ $result['info'][0]->name }} <i class="mdi-navigation-close right"></i></span>
            <ul id="task-card" class="collection with-header">
                <li class="collection-header cyan">
                    <h4 class="task-card-title">My Orders</h4>
                </li>
                @if(count($result['orders']) == 0)
                    <li class="collection-item dismissable">
                        <input type="checkbox" id="task13" />
                        <label for="task1">I am not assigned to any orders yet.</label>
                    </li>
                @endif
                @foreach($result['orders'] as $key=>$order)
                    <li class="collection-item dismissable">
                        <input type="checkbox" id="task{{$key}}" />
                        <label for="task{{$key}}">{{ $order->style }} <a href="#" class="secondary-content"><span class="ultra-small">{{ date_format(date_create($order->handover_date), 'dS M, Y') }}</span></a>
                        </label>
                        <span class="task-cat teal">{{ $order->buyer_name }}</span>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</div>