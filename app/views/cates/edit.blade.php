@extends('layouts.main')
@section('title','Sửa danh mục')
@section('main-content')
<form action="save-edit-cate?id=<?= $model->id ?>" method="post">
    <div class="form-group">
        <label for="">Tên danh mục</label>
        <input type="text" name="cate_name" class="form-control" value="<?= $model->cate_name ?>">
    </div>
    <div class="form-group">
        <label for="">Mô tả</label>
        <textarea name="desc" cols="50" class="form-group" rows="5"><?= $model->desc ?></textarea>
    </div>
    <div class="form-group">
        <label for="">Hiển thị ở menu?</label>
        <input type="checkbox" name="show_menu" value="1">
    </div>
    <div class="form-group">
        <button type="submit">Lưu</button>
    </div>
</form>
@endsection