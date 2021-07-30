<?php
namespace App\Controllers\Frontend;
use App\Controllers\BaseController;
use App\Models\Category;
use App\Models\Product;

class HomeController extends BaseController{

    public function index(){
        $hotProducts = Product::orderBy('star', 'desc')
                                    ->orderBy('id', 'desc')->take(6)->get();
        $hotProducts->load('category');

        $newProduct = Product::orderBy('star', 'desc')->orderBy('id', 'desc')->take(12)->get();

        $tablistCate = Category::where('show_menu' , 1)->get();
        

        $this->render('frontend.homepage', compact('hotProducts', 'tablistCate' , 'newProduct'));
    }
}