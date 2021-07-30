@extends('layouts.client.main2')
@section('cart-section')
<div class="container">
    <div class="row">
        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <main id="primary" class="site-main">
                <div class="shopping-cart">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="section-title">
                                <h2>Giỏ hàng</h2>
                            </div>
                            <form action="#">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th width="100" height="100">Ảnh sản phẩm</th>
                                                <th>Tên sản phẩm</th>
                                                <th>Danh mục</th>
                                                <th>Số lượng</th>
                                                <th>Tổng tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @php
                                            $totalPrice = 0;
                                            @endphp
                                            @foreach ($cart as $item)
                                            @php
                                            $totalPrice += $item['price']*$item['quantity'];
                                            @endphp
                                            <tr>
                                                <td>
                                                    <a href="{{BASE_URL . 'thong-tin-san-pham/' . $item['id']}}"><img src="{{$item['image']}}" alt="{{$item['name']}}" title="{{$item['name']}}" class="img-thumbnail"></a>
                                                </td>
                                                <td>
                                                    <a href="{{BASE_URL . 'thong-tin-san-pham/' . $item['id']}}" style="color: black">{{$item['name']}}</a>
                                                </td>
                                                <td>{{$item['category']['cate_name']}}</td>
                                                <td>
                                                    <input type="number" class="item-quantity" value="{{$item['quantity']}}" />
                                                </td>
                                                <td>${{number_format($item['price']*$item['quantity'], 0, '.', '.')}}</td>
                                                
                                            </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </form>
                            <div class="cart-amount-wrapper">
                                <div class="row">
                                    <div class="col-12 col-sm-12 col-md-4 offset-md-8">
                                        <table class="table table-bordered">
                                            <tbody>
                                                <tr>
                                                    <td><strong>Total:</strong></td>
                                                    <td><span class="color-primary">${{number_format($totalPrice,0)}}</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-12 col-lg-6">
                            <div class="khachang">
                                <div class="section-title">
                                    <h2>Thông tin khách hàng</h2>
                                </div>
                                <form method="POST">
                                    <div class="form-group">
                                        <p>Tên khách hàng</p>
                                        <input type="text" name="customer_name" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <p>Email</p>
                                        <input type="text" name="customer_email" class="form-control">
                                    </div>
                                    <div id="form-group">
                                        <p>Số điện thoại</p>
                                        <input type="text" name="customer_phone_number" class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <p>Địa chỉ nhận hàng</p> <textarea name="customer_address" rows="5" class="form-control"></textarea>
                                    </div>
                                    
                                    <input class="form-control" type="submit" value="THANH TOÁN">
                                </form>

                            </div>
                        </div>
                        <!-- <div class="cart-button-wrapper d-flex justify-content-between mt-4">
                        <a href="{{BASE_URL .'danh-sach-san-pham'}}" class="btn btn-secondary dark">Continue Shopping</a>
                        </div> -->
                        <div class="cart-button-wrapper d-flex justify-content-between mt-4">
                            <a href="{{BASE_URL .'clear-gio-hang'}}" class="btn btn-secondary dark">Delete</a>
                            <a href="{{BASE_URL .'danh-sach-san-pham'}}" class="btn btn-secondary dark">Continue Shopping</a>

                        </div>

                    </div>
                </div> <!-- end of shopping-cart -->
            </main> <!-- end of #primary -->
        </div>
    </div> <!-- end of row -->
</div> <!-- end of container -->
@endsection