@extends('layouts.main')
@section('title','Thêm danh mục')
@section('main-content')
<form action="" method="post">
    <div class="form-row">
        <div class="form-group col-md-6">
        <label for="">Tên danh mục</label>
        <input class="form-control" type="text" name="cate_name">
    </div>
        <div class="form-group col-md-6">
        <label for="">Mô tả</label>
        <textarea name="desc" cols="50" rows="5"></textarea>
    </div>
        <div class="form-group col-md-6">
        <label for="">Hiển thị ở menu?</label>
        <input type="checkbox" name="show_menu" value="1">
    </div>
        <div class="form-group col-md-12">
        <button type="submit" class="form-control">Lưu</button>
    </div>
    </div>
</form>
@endsection