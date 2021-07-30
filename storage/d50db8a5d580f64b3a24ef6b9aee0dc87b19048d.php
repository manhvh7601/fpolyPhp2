
<?php $__env->startSection('title','Danh sách sản phẩm'); ?>

<?php $__env->startSection('main-content'); ?>
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
    <a href="<?php echo e(BASE_URL . 'admin/san-pham/add'); ?>">Add product</a>
    </th>
</thead>
<tbody>

    <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr>
        <td><?php echo e($offset + $loop->iteration); ?></td>
        <td><?php echo e($item->name); ?></td>
        <td><img src="<?php echo e($item->image); ?>" width="100px" height="100px"></td>
        <td><?php echo e($item->category->cate_name); ?></td>
        <td><?php echo e($item->price); ?></td>
        <td><?php echo e($item->detail); ?></td>
        <td><?php echo e($item->star); ?></td>
        <td>
            <a href="<?php echo e(BASE_URL . 'admin/san-pham/edit-product'); ?>?id=<?php echo e($item->id); ?>" class="btn btn-primary">Sửa</a>
            <a href="<?php echo e(BASE_URL . 'admin/san-pham/remove-product'); ?>?id=<?php echo e($item->id); ?>" class="btn btn-danger" onclick="return confirm('Are you sure?')">Xóa</a>
        </td>
    </tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    <tr>
        <td colspan="3">
            <?php for($i = 1; $i <= $totalPage; $i++): ?>
                <a href="<?php echo e(BASE_URL . "admin/san-pham?keyword=$keyword&page=$i "); ?>"><?php echo e($i); ?><a>
            <?php endfor; ?>
            </td>    
    </tr>
</tbody>
</table>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/product/index.blade.php ENDPATH**/ ?>