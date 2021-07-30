<?php
namespace App\Controllers;

use App\Models\Category;
use App\Models\Product;
use Symfony\Component\VarDumper\Cloner\Data;

class CategoryController extends BaseController{

    public function editCate(){
        $id = $_GET['id'];
        $model = Category::find($id);
        if($model){
            $this->render('cates.edit', compact('model'));
        }else {
            header('location: ' .BASE_URL . 'admin');
        }
    }

    public function addNew(){

        $this->render('cates.add-new');
    }

    public function saveCate(){
        $data = $_POST;
        $err = [
            'name' => "",
            'err_name' => "",
            'desc' => "",
            'show_menu' => "",
            'err_show_menu' => "",
        ];

        $checkErr = 0;

        if(Category::where('cate_name',$data['cate_name'])->count() >0){
            $err['err_name'] = "Tên danh mục đã tồn tại";
            $checkErr++;
        }
        if(empty($data['cate_name'])){
            $err['err_name'] = "Tên danh mục không được để trống";
            $checkErr++;
        }
        if(empty($data['desc'])){
            $err['err_desc'] = "Miêu tả mục không được để trống";
            $checkErr++;
        }
        if(empty($data['show_menu'])){
            $err['err_show_menu'] = "Show danh mục phải được chọn";
            $checkErr++;
        }

        if($checkErr == 0){

        
        $model = new Category();
        $model->fill($_POST);
        $model->save();
        unset($_SESSION['err']);
        header('location: ' .BASE_URL . 'admin');
        }else{
            $err['desc'] = $data['desc'];
            $err['name'] = $data['cate_name'];
            $err['show_menu'] = $data['show_menu'];
            $_SESSION['err'] = $err;
            header("Location: ". BASE_URL."admin/danh-muc/add");
        }
    }

    public function saveEdit(){
        $id = $_GET['id'];
        $model = Category::find($id);
        if(!$model){
            header('location: ' .BASE_URL . 'admin');
            die;
        }

        $model->fill($_POST);
        $model->save();
        header('location: ' .BASE_URL . 'admin');
    }

    public function removeCate(){
        $id = $_GET['id'];
        $model = Category::find($id);
        if(!$model){
            header('location: ' .BASE_URL . 'admin');
            die;
        }
        Product::where('cate_id', $id)->delete();
        $model->delete();
        header('location: ' .BASE_URL . 'admin');
    }
    public function listProduct(){
        include_once "../views/frontend/shop-gird.blade.php";
    }
}


?>