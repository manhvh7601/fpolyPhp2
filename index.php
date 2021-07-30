<?php
session_start();
$url = isset($_GET['url']) == true
    ? $_GET['url'] : "/";


require_once './commons/ultis.php';
require_once './vendor/autoload.php';
require_once './config/database.php';
require_once './commons/routes.php';

// // require_once './commons/routes.php';
// // composer require illuminate/database
// // composer require illuminate/events
// // var_dump(password_hash("123456",PASSWORD_DEFAULT)); die;
// use App\Controllers\HomeController;
// use App\Controllers\ProductController;
// use App\Controllers\CategoryController;
// use App\Models\Product;

// switch ($url) {
//     case "/":
//         $ctr = new HomeController();
//         $ctr->index();
//         break;
//     case "new-cate":
//         checkAuth();
//         $ctr = new CategoryController();
//         $ctr->addNew();
//         break;
//     case "save-cate":
//         checkAuth();
//         $ctr = new CategoryController();
//         $ctr->saveCate();
//         break;
//     case "edit-cate":
//         checkAuth();
//         $ctr = new CategoryController();
//         $ctr->editCate();
//         break;
//     case "save-edit-cate":
//         checkAuth();
//         $ctr = new CategoryController();
//         $ctr->saveEdit();
//         break;
//     case "remove-cate":
//         checkAuth();
//         $ctr = new CategoryController();
//         $ctr->removeCate();
//         break;
//     case "san-pham":
//         $ctr = new ProductController();
//         $ctr->index();
//         break;
//     case "new-product":
//         checkAuth();
//         $ctr = new ProductController();
//         $ctr->addProduct();
//         break;
//     case "save-product":
//         checkAuth();
//         $ctr = new ProductController();
//         $ctr->saveProduct();
//         break;
//     case "edit-product":
//         checkAuth();
//         $ctr = new ProductController();
//         $ctr->editProduct();
//         break;
//     case "save-edit-product":
//         checkAuth();
//         $ctr = new ProductController();
//         $ctr->saveEdit();
//         break;
//     case "remove-product":
//         checkAuth();
//         $ctr = new ProductController();
//         $ctr->removeProduct();
//         break;
//     case "login":
//         $ctr = new HomeController();
//         $ctr->loginForm();
//         break;
//     case "post-login":
//         $ctr = new HomeController();
//         $ctr->postLogin();
//         break;
//     case "logout":
//         $ctr = new HomeController();
//         $ctr->logout();
//         break;
//     case "api/product":
//         $ctr = new ProductController;
//         $ctr->apiProducts();
//         break;
//     default:
//         echo "Not found!";
//         break;
// }
