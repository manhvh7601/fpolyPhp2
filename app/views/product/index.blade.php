@extends('layouts.main')
@section('title','Danh sách sản phẩm')

@section('main-content')
<table class="table table-hovered">
<thead>
    <th>STT</th>
    <th style="font-size: 14px;">Product Name</th>
    <th>Image</th>
    <th>Category Name</th>
    <th>Price</th>
    <th>Detail</th>
    <th>Vote</th>
    <th>
    <a href="{{BASE_URL . 'admin/san-pham/add'}}">Add product</a>
    </th>
</thead>
<tbody>

    @foreach($products as $item)
    <tr>
        <td>{{$offset + $loop->iteration}}</td>
        <td>{{$item->name}}</td>
        <td><img src="{{$item->image}}" width="100px" height="100px"></td>
        <td>{{$item->category->cate_name}}</td>
        <td>{{$item->price}}</td>
        <td>{{$item->detail}}</td>
        <td>{{$item->star}}</td>
        <td>
            <a href="{{BASE_URL . 'admin/san-pham/edit-product'}}?id={{$item->id}}" class="btn btn-primary">Sửa</a>
            <a href="{{BASE_URL . 'admin/san-pham/remove-product'}}?id={{$item->id}}" class="btn btn-danger" onclick="return confirm('Are you sure?')">Xóa</a>
        </td>
    </tr>
    @endforeach
    <tr>
        <td colspan="3">
            @for($i = 1; $i <= $totalPage; $i++)
                <a href="{{BASE_URL . "admin/san-pham?keyword=$keyword&page=$i " }}">{{$i}}<a>
            @endfor
            </td>    
    </tr>
</tbody>
</table>
@endsection