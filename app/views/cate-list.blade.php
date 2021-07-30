@extends('layouts.main')
@section('title', 'Danh sách danh mục')
@section('main-content')
<table class="table table-stripped">
    <thead>
        <th>STT</th>
        <th>Tên danh mục</th>
        <th>Mô tả</th>
        <th>Số lượng sản phẩm</th>
        <th>
            <a href="{{BASE_URL . 'admin/danh-muc/add'}}">Tạo mới</a>
        </th>
    </thead>
    <tbody>
        @foreach ($cates as $c)
            <tr>
            <td>{{$loop->iteration}}</td>
                <td class="cate-name">{{$c->cate_name}}</td>
                <td>{{$c->desc}}</td>
                <td>{{count($c->products)}}</td>
                
                <td>
                    <a href="{{BASE_URL . 'admin/danh-muc/edit-cate'}}?id={{$c->id}}" class="btn btn-primary">Sửa</a>
                    <a href="{{BASE_URL . 'admin/danh-muc/remove-cate'}}?id={{$c->id}}" class="btn btn-danger" onclick="return confirm('Are you sure?')">Xóa</a>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
@endsection
@section('page-script')
<script>
    $('.cate-name').click(function(){
        alert($(this).text());
    });
</script>
@endsection