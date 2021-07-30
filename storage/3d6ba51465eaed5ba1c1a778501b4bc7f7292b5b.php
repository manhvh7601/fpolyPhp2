
<?php $__env->startSection('title','Thêm danh mục'); ?>
<?php $__env->startSection('main-content'); ?>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/cates/add-new.blade.php ENDPATH**/ ?>