<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<table>
    <thead>
        <th>ID</th>
        <th>Tên danh mục</th>
        <th>Mô tả</th>
        <th>Hiển thị menu</th>
        <th>
            <a href="new-cate">Tạo mới</a>
        </th>
    </thead>
    <tbody>
        <?php $__currentLoopData = $cates; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $c): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <tr>
                <td><?php echo e($c->id); ?></td>
                <td><?php echo e($c->cate_name); ?></td>
                <td><?php echo e($c->desc); ?></td>
                <td><?php echo e($c->show_menu == 1 ? "Có" : "Không"); ?></td>
                <td>
                    <a href="edit-cate?id=<?php echo e($c->id); ?>">Sửa</a>
                    <a href="remove-cate?id=<?php echo e($c->id); ?>">Xóa</a>
                </td>
            </tr>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </tbody>
</body>
</html><?php /**PATH C:\xampp\htdocs\php2\MVC\app\views/cate-list.blade.php ENDPATH**/ ?>