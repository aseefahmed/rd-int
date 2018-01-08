@if(count($yarnlist)>0)
<div class="input-field col s12" ng-controller="BuyingOrderController">    
    <div class="collection">
    	<a href="#!" class="collection-item active">PLY B/D</a>	
    @foreach($yarnlist as $index=>$yarn)
    	<a href="#!" class="collection-item">
    			 <input name="ply" class="yarn_ply_val" ng-click="setYarnPLY({{$yarn->id}})" type="radio" value="{{$yarn->id}}" id="ply_{{$index}}" />
	    		<label for="ply_{{$index}}">{{$yarn->ply_b_d}}</label>
    	</a>
    @endforeach
  </div>
        

</div>
@endif