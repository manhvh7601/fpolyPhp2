
<?php $__env->startSection('main-content'); ?>

<div class="best-selling section-bg">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-xl-7 col-lg-8">
            <div class="section-tittle text-center mb-55">
              <h2>Sản phẩm nổi bật</h2>
            </div>
          </div>
        </div>
        <div class="row">
        <?php $__currentLoopData = $hotProducts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6"  width="100" height="100">
                <div class="properties pb-30">
                  <div class="properties-card">
                    
                    <div class="properties-img">
                      <a href="<?php echo e(BASE_URL .'thong-tin-san-pham/' .$items->id); ?>"><img src="<?php echo e($items->image); ?>" alt=""></a>
                    </div>
                    <div class="properties-caption properties-caption2">
                      <h3><a href="<?php echo e(BASE_URL .'thong-tin-san-pham/' .$items->id); ?>"><?php echo e($items->name); ?></a></h3>
                      <div class="properties-footer d-flex justify-content-between align-items-center">
                        <div class="price">
                        <span>Price: <?php echo e(number_format($items->price, 0, '.', '.')); ?> $</span>
                        </div>
                      </div>
                    </div>
                  </div>
                    
                </div>
              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
      </div>
    </div>
    <section class="our-client section-padding best-selling">
      <div class="container">
        <div class="row justify-content-between">
          <div class="col-xl-5 col-lg-5 col-md-12">

            <div class="section-tittle text-center mb-45">
              <h2>Sản phẩm mới</h2>
            </div>
          </div>
          <div class="col-xl-7 col-lg-7 col-md-12">
            <div class="nav-button mb-40">

              <!-- <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <?php $__currentLoopData = $tablistCate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tl): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <a class="nav-link <?php if($loop->first): ?> active <?php endif; ?>" id="nav-one-tab-<?php echo e($tl->id); ?>" data-bs-toggle="tab" href="#catelist" role="tab"
                    aria-controls="catelist-<?php echo e($tl->id); ?>" aria-selected="true"><?php echo e($tl->cate_name); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>
              </nav> -->

            </div>
          </div>
        </div>
      </div>
      <div class="container">

        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="nav-one" role="tabpanel" aria-labelledby="nav-one-tab">

            <div class="row">
              <?php $__currentLoopData = $newProduct; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                <div class="properties pb-30">
                  <div class="properties-card">
                    
                    <div class="properties-img">
                      <a href="<?php echo e(BASE_URL .'thong-tin-san-pham/' .$items->id); ?>"><img src="<?php echo e($items->image); ?>" alt="<?php echo e($items->name); ?>"></a>
                    </div>
                    <div class="properties-caption properties-caption2">
                      <h3><a href="<?php echo e(BASE_URL .'thong-tin-san-pham/' .$items->id); ?>"><?php echo e($items->name); ?></a></h3>
                      <div class="properties-footer d-flex justify-content-between align-items-center">
                        <div class="price">
                        <span>Price: <?php echo e(number_format($items->price, 0, '.', '.')); ?> $</span>
                        </div>
                      </div>
                      <button class="btn btn-primary"><a href="<?php echo e(BASE_URL .'add-to-cart/'.$items->id); ?>">Add to cart</a></button>
                    </div>
                  </div>
                    
                </div>
              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
          </div>
          </div>
        </div>
      </div>
    </section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.client.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/frontend/homepage.blade.php ENDPATH**/ ?>