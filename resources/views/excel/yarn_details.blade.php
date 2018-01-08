

    <tr>
        <td colspan="4" style="font-size: 18px; font-weight: bold;">RD INTERNATIONAL</td>
    </tr>
    <tr>
        <td colspan="4" >REF# YARN CONTENT DETAILS</td>
    </tr>
    <tr>
        <td colspan="4" >&nbsp;</td>
    </tr>
    <tr>
        <th style="border: 1px solid #000;" style="border: 1px solid #000;" style="border: 1px solid #000;">SL</th>
        <th style="border: 1px solid #000;" style="border: 1px solid #000;">Yarn Code</th>
        <th style="border: 1px solid #000;">Yarn</th>
        <th style="border: 1px solid #000;" style="border: 1px solid #000;" style="border: 1px solid #000;">PLY B/D</th>
        <th style="border: 1px solid #000;" style="border: 1px solid #000;">Yarn Content (Care Label)</th>
        <th style="border: 1px solid #000;">Remarks</th>
    </tr>


    <?php $row = 1; ?>
    @foreach($yarns as $index=>$yarn)
        
        <tr>
            <td style="border: 1px solid #000;" style="border: 1px solid #000;">{{ $row++ }}</td>
            <td style="border: 1px solid #000;" >{{ strtoupper($yarn->yarn_code) }}</td>
            <td style="border: 1px solid #000;" >{{ strtoupper($yarn->yarn) }}</td>
     
            <td style="border: 1px solid #000;">{{ strtoupper($yarn->ply_b_d) }}</td>
            <td style="border: 1px solid #000;">{{ strtoupper($yarn->yarn_content) }}</td>
            <td style="border: 1px solid #000;">{{ strtoupper($yarn->remarks) }}</td>
                
         

        </tr>
        

    @endforeach
    @if(count($yarns)==0)
    <tr class="odd" style="background-color: #f9f9f9"><td valign="top" colspan="4" class="dataTables_empty">No matching records found</td></tr>
    @endif
