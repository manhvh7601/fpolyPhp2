
<?php $__env->startSection('title','Thêm sản phẩm'); ?>
<?php $__env->startSection('main-content'); ?>
<form action="" method="post" enctype="multipart/form-data">
<div class="form-row">
    <div class="form-group col-md-6">
        <label for="">Danh mục</label>
        <select name="cate_id">
            <?php $__currentLoopData = $listCate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <option value="<?php echo e($row->id); ?>"><?php echo e($row->cate_name); ?></option>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </select>
    </div>
    <div class="form-group col-md-6">
        <label for="">Tên sản phẩm</label>
        <input type="text" name="name" class="form-control">
    </div>
    <div class="form-group col-md-6">
        <label for="">Ảnh </label>
        <input type="file" name="image" class="form-control">
    </div>
    <div class="form-group col-md-6">
        <label for="">Giá sản phẩm</label>
        <input type="number" name="price" class="form-control">
    </div>
    <div class="form-group col-md-6">
        <label for="">Miêu tả</label>
        <textarea name="short_desc" cols="50" rows="5" class="form-control"></textarea>
    </div>
    <div class="form-group col-md-6">
        <label for="">Chi tiết sản phẩm</label>
        <textarea name="detail" cols="50" rows="5" class="form-control"></textarea>
    </div>
    <div class="form-group col-md-6">
        <label for="">Đánh giá</label>
        <input type="number" name="star" class="form-control">
    </div>
    <div class="form-group col-md-12">
        <button type="submit" class="form-control">Save</button>
    </div>
    </div>
</form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/product/add-product.blade.php ENDPATH**/ ?>