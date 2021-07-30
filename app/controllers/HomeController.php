<?php
namespace App\Controllers;

use App\Models\Category;
use App\Models\User;
use App\Models\Product;
use App\Models\Invoice;
use App\Models\InvoiceDetails;

class HomeController extends BaseController{

    public function index(){
        $keyword = isset($_GET['keyword']) == true ?$_GET['keyword'] : "";
        if($keyword != ""){
            $cates = Category::where("cate_name", "like", "%$keyword%")->get();
        }
        else{
            $cates = Category::all();
        }
        $cates->load('products');
        $this->render('cate-list', compact('cates'));
    }
    public function loginForm(){
        $this->render('auth.login');
    }
    public function postLogin(){
        $email = isset($_POST['email']) == true ? trim($_POST['email']) : "";
        $password = isset($_POST['password']) == true ? trim($_POST['password']) : "";

        if(empty($email) || empty($password)){
            header('location: ' . BASE_URL . 'login?msg=Tài khoản/mật khẩu không hợp lệ');
            die;
        }

        $user = User::where('email', $email)->first();

        if(
            empty($user) || 
            !password_verify($password, $user->password)
        ){
            header('location: ' . BASE_URL . 'login?msg=Tài khoản/mật khẩu không đúng');
            die;
        }

        $_SESSION[AUTH] = [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'role' => $user->role
        ];
        header('location: ' .BASE_URL . 'admin');

    }
    public function logout(){
        unset($_SESSION[AUTH]);
        header('location: ' . BASE_URL);
    }
    public function addToCart($id){
        $cart = isset($_SESSION[CART]) == true ? $_SESSION[CART] : [];
        // dựa vào id nhận đc, lấy ra thông tin sản phẩm => mảng
        $product = Product::find($id);
        $product->load('category');
        $product = $product->toArray();
        // kiểm tra trong giỏ hàng xem đã có sản phẩm này hay chưa ?
        $existedIndex = -1;

        for($i = 0; $i < count($cart); $i++){
            if($cart[$i]['id'] == $id){
                $existedIndex = $i;
                break;
            }
        }
        if($existedIndex == -1){
            // nếu chưa có thì bổ sung thêm 1 phần tử trong mảng sản phẩm là quantity = 1
            // sau đó add sản phẩm vào biến $cart
            $product['quantity'] = 1;
            array_push($cart, $product);
        }else{
            // nếu sản phẩm đã có trong giỏ hàng rồi
            // thì thay đổi giá trị của phần tử quantity += 1
            $cart[$existedIndex]['quantity'] += 1;
        }

        $_SESSION[CART] = $cart;

        header('location: ' . BASE_URL . 'gio-hang');
        die;
    }
    public function cartDetail(){
        $cart = isset($_SESSION[CART]) == true ? $_SESSION[CART] : [];
        $this->render('frontend.cart-detail', compact('cart'));
    }

    public function clearCart(){
        if(isset($_SESSION[CART])){
            unset($_SESSION[CART]);
        }

        header('location: '.BASE_URL.'gio-hang');die;
    }
    public function checkOuts(){
        $this->render('frontend.check-outs');
    }
    public function thanhToan(){
        $invoice = new Invoice();
        $model = $_POST;
        $invoice->fill($model);

        if(isset($_SESSION[CART]) && $invoice->save()){
            $sessionCart = $_SESSION[CART];
            foreach($sessionCart as $item){
                $invoiceDetail = new InvoiceDetails();
                $invoiceDetail->fill(['product_id' => $item['id'], 'invoice_id' =>$invoice->id,'quantity'=>$item['quantity'] , 'unit_price' => $item['price']]);
                $invoiceDetail->save();
                unset($_SESSION[CART]);
            }
            header("Location: ".BASE_URL."check-outs");
        }else {
            echo "LỖI";
            header("Location: ". BASE_URL."gio-hang");
        }
        $this->render('frontend.check-outs',compact('error','sessionCart'));
        
    }
}


?>