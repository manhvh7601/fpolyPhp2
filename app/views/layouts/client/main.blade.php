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

  @include('layouts.client.style')
</head>

<body>
  @include('layouts.client.header')
  <main>

    <div class="slider-area">
      <div class="container">
        <div class="row">
          <div class="col-xl-12">
            <div class="slider-active dot-style">

              <div class="single-slider slider-height slider-bg1 d-flex align-items-center">
                <div class="container">
                  <div class="row justify-content-center">
                    <div class="col-xxl-4 col-xl-4 col-lg-5 col-md-6 col-sm-7">
                      <div class="hero-caption text-center">
                        <span data-animation="fadeInUp" data-delay=".2s">Science Fiction</span>
                        <h1 data-animation="fadeInUp" data-delay=".4s">The History<br> of Phipino</h1>
                        <a href="#" class="btn hero-btn" data-animation="bounceIn" data-delay=".8s">Browse Store</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="single-slider slider-height slider-bg2 d-flex align-items-center">
                <div class="container">
                  <div class="row justify-content-center">
                    <div class="col-xxl-4 col-xl-4 col-lg-5 col-md-6 col-sm-7">
                      <div class="hero-caption text-center">
                        <span data-animation="fadeInUp" data-delay=".2s">Science Fiction</span>
                        <h1 data-animation="fadeInUp" data-delay=".4s">The History<br> of Phipino</h1>
                        <a href="#" class="btn hero-btn" data-animation="bounceIn" data-delay=".8s">Browse Store</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="single-slider slider-height slider-bg3 d-flex align-items-center">
                <div class="container">
                  <div class="row justify-content-center">
                    <div class="col-xxl-4 col-xl-4 col-lg-5 col-md-6 col-sm-7">
                      <div class="hero-caption text-center">
                        <span data-animation="fadeInUp" data-delay=".2s">Science Fiction</span>
                        <h1 data-animation="fadeInUp" data-delay=".4s">The History<br> of Phipino</h1>
                        <a href="#" class="btn hero-btn" data-animation="bounceIn" data-delay=".8s">Browse Store</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
<div class="row">
@yield('main-content')
@yield('shop-gird')
</div>
  </main>
  @include('layouts.client.footer')

  <div id="back-top">
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
  </div>


  @include('layouts.client.script')

  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
  </script>
</body>

<!-- Mirrored from preview.colorlib.com/theme/abcbook/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 02 Mar 2021 02:53:04 GMT -->

</html>