@extends('layouts.client.main')
@section('shop-gird')
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
                  @foreach ($tablistCate as $tl)
                  <a class="nav-link @if($loop->first) active @endif" id="nav-one-tab-{{$tl->id}}" data-bs-toggle="tab" href="#catelist" role="tab"
                    aria-controls="catelist-{{$tl->id}}" aria-selected="true" style="color: black">{{$tl->cate_name}}</a>
                @endforeach
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
              @foreach($product as $items)
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                <div class="properties pb-30">
                  <div class="properties-card">
                    
                    <div class="properties-img">
                      <a href="{{BASE_URL .'thong-tin-san-pham/' .$items->id}}"><img src="{{$items->image}}" alt="{{$items->name}}"></a>
                    </div>
                    <div class="properties-caption properties-caption2">
                      <h6><a href="{{BASE_URL .'thong-tin-san-pham/' .$items->id}}">{{$items->name}}</a></h6>
                      <div class="properties-footer d-flex justify-content-between align-items-center">
                        <div class="price">
                        <span>{{number_format($items->price, 0, '.', '.')}} $</span>
                        </div>
                      </div>
                    <a href="{{BASE_URL .'add-to-cart/'.$items->id}}" style="color: black;" class="default-btn">Add to cart</a>  
                    </div>
                    <!-- <button class="btn btn-primary"><a href="{{BASE_URL .'add-to-cart/'.$items->id}}">Add to cart</a></button> -->
                    
                  </div>
                    
                </div>
              </div>
              @endforeach
            </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</div>
    @endsection