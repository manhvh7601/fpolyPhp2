@extends('layouts.client.main')
@section('main-content')

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
        @foreach($hotProducts as $items)
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6"  width="100" height="100">
                <div class="properties pb-30">
                  <div class="properties-card">
                    
                    <div class="properties-img">
                      <a href="{{BASE_URL .'thong-tin-san-pham/' .$items->id}}"><img src="{{$items->image}}" alt=""></a>
                    </div>
                    <div class="properties-caption properties-caption2">
                      <h3><a href="{{BASE_URL .'thong-tin-san-pham/' .$items->id}}">{{$items->name}}</a></h3>
                      <div class="properties-footer d-flex justify-content-between align-items-center">
                        <div class="price">
                        <span>Price: {{number_format($items->price, 0, '.', '.')}} $</span>
                        </div>
                      </div>
                    </div>
                  </div>
                    
                </div>
              </div>
              @endforeach
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
                @foreach ($tablistCate as $tl)
                  <a class="nav-link @if($loop->first) active @endif" id="nav-one-tab-{{$tl->id}}" data-bs-toggle="tab" href="#catelist" role="tab"
                    aria-controls="catelist-{{$tl->id}}" aria-selected="true">{{$tl->cate_name}}</a>
                @endforeach
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
              @foreach($newProduct as $items)
              <div class="col-xl-2 col-lg-3 col-md-4 col-sm-6">
                <div class="properties pb-30">
                  <div class="properties-card">
                    
                    <div class="properties-img">
                      <a href="{{BASE_URL .'thong-tin-san-pham/' .$items->id}}"><img src="{{$items->image}}" alt="{{$items->name}}"></a>
                    </div>
                    <div class="properties-caption properties-caption2">
                      <h3><a href="{{BASE_URL .'thong-tin-san-pham/' .$items->id}}">{{$items->name}}</a></h3>
                      <div class="properties-footer d-flex justify-content-between align-items-center">
                        <div class="price">
                        <span>Price: {{number_format($items->price, 0, '.', '.')}} $</span>
                        </div>
                      </div>
                      <button class="btn btn-primary"><a href="{{BASE_URL .'add-to-cart/'.$items->id}}">Add to cart</a></button>
                    </div>
                  </div>
                    
                </div>
              </div>
              @endforeach
            </div>
          </div>
          </div>
        </div>
      </div>
    </section>
@endsection