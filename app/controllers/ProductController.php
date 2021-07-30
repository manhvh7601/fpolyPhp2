<?php

namespace App\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\ProductGallery;

class ProductController extends BaseController
{

    public function index()
    {
        $pagenumber = isset($_GET['page']) == true ? $_GET['page'] : 1;
        $pagesize = isset($_GET['size']) == true ? $_GET['size'] : 20;
        $offset = ($pagenumber - 1) * $pagesize;
        $keyword = isset($_GET['keyword']) == true ? $_GET['keyword'] : "";
        if ($keyword != "") {
            $products = Product::where("name", "like", "%$keyword%")
                ->take($pagesize)
                ->skip($offset)
                ->get();
            $totalPage = intval(ceil(Product::where("name", "like", "%$keyword%")->count() / $pagesize));
        } else {
            $products = Product::take($pagesize)
                ->skip($offset)
                ->get();
            $totalPage = intval(ceil(Product::count() / $pagesize));
        }
        $products->load('category');
        $this->render('product.index', [
            'products' => $products,
            'totalPage' => $totalPage,
            'offset' => $offset,
            'keyword' => $keyword
        ]);
    }
    public function addProduct()
    {
        $listCate = Category::all();
        $this->render('product.add-product', compact('listCate'));
    }
    public function saveProduct()
    {
        $data = $_POST;
        $model = new Product();

        $image = $_FILES['image'];
        if ($image['size'] > 0) {
            $path = "public/upload/";
            $tmp_name = $image['tmp_name'];
            move_uploaded_file($tmp_name, $path . $image['name']);
            $file_name = $path . $image['name'];
            $data['image'] = $file_name;
        }
        $model->fill($data);
        $model->save();
        header("Location: " . BASE_URL . 'admin/san-pham');
    }
    public function editProduct()
    {
        $listCate = Category::all();

        $id = $_GET['id'];
        $model = Product::find($id);
        if ($model) {
            $this->render('product.edit',compact('listCate', 'model'));
        } else {
            header("Location: " .BASE_URL.'admin/san-pham');
        }
    }
    public function saveEdit()
    {
        $data = $_POST;
        $id = $_GET['id'];
        $model = Product::find($id);
        if (!$model) {
            header("Location: " .BASE_URL.'admin/san-pham');
            die;
        }
        $image = $_FILES['image'];
        if ($image['size'] > 0) {
            $path = "public/upload/";
            $tmp_name = $image['tmp_name'];
            move_uploaded_file($tmp_name, $path . $image['name']);
            $file_name = $path . $image['name'];
            $data['image'] = $file_name;
        }
        $model->fill($data);
        $model->save();
        header("Location: " .BASE_URL.'admin/san-pham');
    }
    public function removeProduct()
    {
        $id = $_GET['id'];
        $model = Product::find($id);
        if (!$model) {
            header("Location: " .BASE_URL.'admin/san-pham');
            die;
        }
        Product::where('id', $id)->delete();
        $model->delete();
        header("Location: ./");
    }
    public function detailProduct($id)
    {
        $product = Product::find($id);
        $product->load('galleries', 'category');

        $relateProducts = Product::where('cate_id','=', $product->cate_id)
                                ->where('id', '<>', $id)
                                ->orderBy('star', 'desc')
                                ->take(7)
                                ->get();
        $this->render('frontend.detail-product', compact('product', 'relateProducts'));
    }
    public function listProduct(){
        $product = Product::all();
        $listCate = Product::orderBy('id', 'desc')->take(5)->get();
        $listCate->load('category');
        
        $tablistCate = Category::where('show_menu' , 1)->get();


        $this->render('frontend.shop-gird', compact('product' , 'listCate' , 'tablistCate'));
    }

    // public function apiProducts()
    // {
    //     $products = Product::all();
    //     echo json_encode($products);
    // }
}
