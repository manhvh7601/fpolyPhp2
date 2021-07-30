@extends('layouts.main')
@section('title','Sửa sản phẩm')
@section('main-content')
<form action="save-edit-product?id=<?= $model->id?>" method="post" enctype="multipart/form-data"> 
<div class="form-row">
<div class="form-group col-md-6">
        <label for="">Danh mục</label>
        <select name="cate_id">
            @foreach($listCate as $row)
            <option value="{{ $row->id }}">{{ $row->cate_name }}</option>
            @endforeach
        </select>
    </div>
    <div class="form-group col-md-6">
        <label for="">Tên sản phẩm</label>
        <input class="form-control" type="text" name="name" value="<?= $model->name ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="">Ảnh</label>
        <input class="form-control" type="file" name="image" value="<?= $model->image ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="">Giá sản phẩm</label>
        <input class="form-control" type="number" name="price" value="<?= $model->price ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="">Miêu tả</label>
        <input class="form-control" type="text" name="short_desc" value="<?= $model->short_desc ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="">Chi tiết sản phẩm</label>
        <input class="form-control" type="text" name="detail" value="<?= $model->detail ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="">Đánh giá</label>
        <input class="form-control" type="number" name="star" value="<?= $model->star ?>">
    </div>
    <div class="form-group col-md-12">
        <button type="submit">Save</button>
    </div>  
</div>
</form>
@endsection