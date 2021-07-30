<header>
    <div class="header-area">
      <div class="main-header ">
        <div class="header-top ">
          <div class="container">
            <div class="row">
              <div class="col-xl-12">
                <div class="d-flex justify-content-between align-items-center flex-sm">
                  <div class="header-info-left d-flex align-items-center">

                    <div class="logo">
                      <a href="{{BASE_URL}}"><img src="{{PUBLIC_URL .'assets/img/logo/logo.png'}}" alt=""></a>
                    </div>

                    <form action="#" class="form-box">
                      <input type="text" name="Search" placeholder="Search book by author or publisher">
                      <div class="search-icon">
                        <i class="ti-search"></i>
                      </div>
                    </form>
                  </div>
                  <div class="header-info-right d-flex align-items-center">
                    <ul>
                      <li><a href="#">FAQ</a></li>
                      <li><a href="#">Track Order</a></li>
                      <li class="shopping-card">
                        <a href="{{BASE_URL .'gio-hang'}}"><img src="{{PUBLIC_URL .'assets/img/icon/cart.svg'}}" alt=""></a>
                      </li>
                      <li><a href="{{BASE_URL .'login'}}" class="btn header-btn">Sign in</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="header-bottom  header-sticky">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-xl-12">


                <div class="main-menu text-center d-none d-lg-block">
                  <nav>
                    <ul id="navigation">
                      <li><a href="{{BASE_URL}}">Home</a></li>
                      <li><a href="{{BASE_URL .'danh-sach-san-pham'}}">Shop</a></li>
                      <li><a href="#">Pages</a>
                        <ul class="submenu">
                          <li><a href="{{BASE_URL .'gio-hang'}}">Cart</a></li>
                          <li><a href="checkout.html">Checkout</a></li>
                        </ul>
                      </li>
                      <li><a href="blog.html">Blog</a></li>
                      <li><a href="contact.html">Contact</a></li>
                    </ul>
                  </nav>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>