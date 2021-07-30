
<?php $__env->startSection('title', 'Danh sách danh mục'); ?>
<?php $__env->startSection('main-content'); ?>
<table class="table table-stripped">
    <thead>
        <th>STT</th>
        <th>Tên danh mục</th>
        <th>Mô tả</th>
        <th>Số lượng sản phẩm</th>
        <th>
            <a href="<?php echo e(BASE_URL . 'admin/danh-muc/add'); ?>">Tạo mới</a>
        </th>
    </thead>
    <tbody>
        <?php $__currentLoopData = $cates; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
            <td><?php echo e($loop->iteration); ?></td>
                <td class="cate-name"><?php echo e($c->cate_name); ?></td>
                <td><?php echo e($c->desc); ?></td>
                <td><?php echo e(count($c->products)); ?></td>
                
                <td>
                    <a href="<?php echo e(BASE_URL . 'admin/danh-muc/edit-cate'); ?>?id=<?php echo e($c->id); ?>" class="btn btn-primary">Sửa</a>
                    <a href="<?php echo e(BASE_URL . 'admin/danh-muc/remove-cate'); ?>?id=<?php echo e($c->id); ?>" class="btn btn-danger" onclick="return confirm('Are you sure?')">Xóa</a>
                </td>
            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
</table>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('page-script'); ?>
<script>
    $('.cate-name').click(function(){
        alert($(this).text());
    });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/cate-list.blade.php ENDPATH**/ ?>