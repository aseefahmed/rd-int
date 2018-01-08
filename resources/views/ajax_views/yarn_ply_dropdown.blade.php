<select name="ply">
    @foreach($yarnlist as $index=>$ply)
        <option value="{{ $ply->id}}" >{{ $ply->ply_b_d }}</option>
    @endforeach
</select>
<label>PLY</label>