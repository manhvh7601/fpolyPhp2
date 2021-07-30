
<?php $__env->startSection('cart-section'); ?>;
<h1 style="text-align: center;">Cảm ơn bạn đã mua hàng</h1>
<div class="cart-button-wrapper d-flex justify-content-between mt-4">
    <h4>Bạn muốn tiếp tục mua hàng</h4>
    <a href="<?php echo e(BASE_URL .'danh-sach-san-pham'); ?>" class="btn btn-secondary dark">Continue Shopping</a>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.client.main2', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/frontend/check-outs.blade.php ENDPATH**/ ?>