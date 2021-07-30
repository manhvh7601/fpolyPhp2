
<?php $__env->startSection('shop-gird'); ?>
<div class="listing-area pt-50 pb-50">
      <div class="container">
        <div class="row">

          <div class="col-xl-4 col-lg-4 col-md-6">

            <div class="category-listing mb-50">

              <div class="single-listing">

                <div class="select-Categories pb-30">
                  <div class="small-tittle mb-20">
                    <h4>Danh muc</h4>
                  </div>
                  <?php $__currentLoopData = $tablistCate; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tl): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <a class="nav-link <?php if($loop->first): ?> active <?php endif; ?>" id="nav-one-tab-<?php echo e($tl->id); ?>" data-bs-toggle="tab" href="#catelist" role="tab"
                    aria-controls="catelist-<?php echo e($tl->id); ?>" aria-selected="true" style="color: black"><?php echo e($tl->cate_name); ?></a>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </div>


                <aside class="left_widgets p_filter_widgets price_rangs_aside sidebar_box_shadow mb-40">
                  <div class="small-tittle">
                    <h4>Filter by Price</h4>
                  </div>
                  <div class="widgets_inner">
                    <div class="range_item">
                      <input type="text" class="js-range-slider" value="" />
                      <div class="d-flex align-items-center">
                        <div class="price_value d-flex justify-content-center">
                          <input type="text" class="js-input-from" id="amount" readonly />
                          <span>to</span>
                          <input type="text" class="js-input-to" id="amount" readonly />
                        </div>
                      </div>
                    </div>
                  </div>
                </aside>

              </div>
            </div>

          </div>

          <div class="col-xl-8 col-lg-8 col-md-6">
            <div class="best-selling p-0">
            <div class="row">
              <?php $__currentLoopData = $product; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $items): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                <div class="properties pb-30">
                  <div class="properties-card">
                    
                    <div class="properties-img">
                      <a href="<?php echo e(BASE_URL .'thong-tin-san-pham/' .$items->id); ?>"><img src="<?php echo e($items->image); ?>" alt="<?php echo e($items->name); ?>"></a>
                    </div>
                    <div class="properties-caption properties-caption2">
                      <h6><a href="<?php echo e(BASE_URL .'thong-tin-san-pham/' .$items->id); ?>"><?php echo e($items->name); ?></a></h6>
                      <div class="properties-footer d-flex justify-content-between align-items-center">
                        <div class="price">
                        <span><?php echo e(number_format($items->price, 0, '.', '.')); ?> $</span>
                        </div>
                      </div>
                    <a href="<?php echo e(BASE_URL .'add-to-cart/'.$items->id); ?>" style="color: black;" class="default-btn">Add to cart</a>  
                    </div>
                    <!-- <button class="btn btn-primary"><a href="<?php echo e(BASE_URL .'add-to-cart/'.$items->id); ?>">Add to cart</a></button> -->
                    
                  </div>
                    
                </div>
              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
    <?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.client.main', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\PHP2\mvc\app\views/frontend/shop-gird.blade.php ENDPATH**/ ?>