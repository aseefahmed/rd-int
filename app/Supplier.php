<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    protected $fillable = ['supplier_name','contact_person','email_address','contact_number','website','postal_address', 'merchandiser_id'];
}
