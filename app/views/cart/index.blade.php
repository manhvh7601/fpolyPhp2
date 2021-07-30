@extends('layouts.main')
@section('title','Giỏ hàng')
@section('main-content')

<table class="table table-stripped">
    <thead>
        <th>#</th>
        <th>Tên sản phẩm</th>
        <th>Ảnh</th>
        <th>Số lượng</th>
        <th>Giá sản phẩm</th>
        <th>Trạng thái</th>
    </thead>
    <tbody>
        @foreach($invoices as $i)
        <td>{{$loop->iteration}}</td>
        <td>{{$i->customer_name}}</td>
        <td>{{$i->image}}</td>
        <td>{{$i->invoice_details->quantity}}</td>
        <td>{{$i->total_price}}</td>
        <td>{{($i['action'] == 1) ? "Xac nhan"}}</td>
        @endforeach
    </tbody>
</table>

@endsection