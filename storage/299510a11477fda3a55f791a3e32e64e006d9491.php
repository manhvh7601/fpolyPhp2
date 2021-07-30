<!doctype html>
<html class="no-js" lang="zxx">

<!-- Mirrored from preview.colorlib.com/theme/abcbook/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 Mar 2021 02:52:47 GMT -->

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Book Shop</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="shortcut icon" type="image/x-icon" href="assets/img/icon/favicon.png">

  <?php echo $__env->make('layouts.client.style', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</head>

<body>
  <?php echo $__env->make('layouts.client.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
  <main>
<div class="row">
<?php echo $__env->yieldContent('detail-section'); ?>
<?php echo $__env->yieldContent('cart-section'); ?>
</div>
  </main>
  <?php echo $__env->make('layouts.client.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <div id="back-top">
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
  </div>


  <?php echo $__env->make('layouts.client.script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
  </script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 Mar 2021 02:53:04 GMT -->

</html><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/layouts/client/main2.blade.php ENDPATH**/ ?>