<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    protected $fillable = [
       'color', 'session', 'rd_card_dt', 'received_date', 'sub_date', 'approved_date', 'rejected_date', 're_sub_date', 'rs_no', 'card', 'shade', 'status', 'remarks', 'l_dip_req_dT', 're_l_d_rcvd_date', 'yarn_type'
    ];
}
