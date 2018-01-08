<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Buyer extends Model
{
    protected $fillable = ['buyer_name','contact_person','email_address','contact_number','website','postal_address'];
}
