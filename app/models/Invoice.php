<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
class Invoice extends Model{
    protected $table = 'invoices';
    protected $fillable = ['id', 'customer_name', 'customer_phone_number','customer_id','customer_address','total_price','image','payment_method'];
    

    public function category(){
        return $this->belongsTo(Category::class, 'cate_id');
    }

    public function invoice_details(){
        return $this->hasMany(Invoice::class, 'invoice_id');
    }
}

?>