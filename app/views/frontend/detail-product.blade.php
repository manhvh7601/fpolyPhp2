@extends('layouts.client.main2')
@section('detail-section')

<div class="services-area2">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="row">
              <div class="col-xl-12">
@foreach($product->galleries as $proImg)
                <div class="single-services d-flex align-items-center mb-0">
                  <div class="features-img">
                    <img src="{{$proImg->img_url}}" alt="{{$product->name}}">
                  </div>
                  <div class="features-caption">
                    <h3>{{$product->name}}</h3>
                    <span>{{$product->short_desc}}</span>
                    <div class="price">
                    <span>Price: {{number_format($product->price, 0, '.', '.')}} $</span>
                    </div>
                    <button class="btn btn-primary"><a href="{{BASE_URL .'add-to-cart/'.$product->id}}">Add to cart</a></button>
                  </div>
                </div>
              </div>
@endforeach
            </div>
          </div>
        </div>
      </div>
    </div>


    <section class="our-client section-padding best-selling">
      <div class="container">
        <div class="row">
          <div class="offset-xl-1 col-xl-10">
            <div class="nav-button f-left">

              <nav>
                <div class="nav nav-tabs " id="nav-tab" role="tablist">
                  <a class="nav-link active" id="nav-one-tab" data-bs-toggle="tab" href="#nav-one" role="tab"
                    aria-controls="nav-one" aria-selected="true">Description</a>
                </div>
              </nav>

            </div>
          </div>
        </div>
      </div>
      <div class="container">

        <div class="tab-content" id="nav-tabContent">
          <div class="tab-pane fade show active" id="nav-one" role="tabpanel" aria-labelledby="nav-one-tab">

            <div class="row">
              <div class="offset-xl-1 col-lg-9">
                <p>{{$product->detail}}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
@endsection