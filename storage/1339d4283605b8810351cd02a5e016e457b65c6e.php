
<?php $__env->startSection('title','Sửa danh mục'); ?>
<?php $__env->startSection('main-content'); ?>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/cates/edit.blade.php ENDPATH**/ ?>