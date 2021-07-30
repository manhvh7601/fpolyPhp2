<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class InvoiceDetails extends Model{
    protected $table = 'invoice_detail';
    protected $fillable = ['invoice_id','product_id','quantity','unit_price'];
}

?>