@extends('layouts.client.main2')
@section('cart-section');
<h1 style="text-align: center;">Cảm ơn bạn đã mua hàng</h1>
<div class="cart-button-wrapper d-flex justify-content-between mt-4">
    <h4>Bạn muốn tiếp tục mua hàng</h4>
    <a href="{{BASE_URL .'danh-sach-san-pham'}}" class="btn btn-secondary dark">Continue Shopping</a>
</div>
@endsection