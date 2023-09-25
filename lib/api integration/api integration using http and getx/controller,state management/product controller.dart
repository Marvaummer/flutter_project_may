import 'package:flutter_project_may/api%20integration/api%20integration%20using%20http%20and%20getx/services/http%20service.dart';
import 'package:get/get.dart';
//import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ProductController extends GetxController {
  RxBool isLoading=true.obs; //here isLoading is now in observable state
 var productList=[].obs;
 @override
 void onInit(){
   loadProducts(); //to fetch data from service class
   super.onInit();

 }
 void loadProducts()async{
   try{
     isLoading(true);
     var products=await HttpService.fetchProducts();
     if(products!=null){
       productList.value=products;
     }

 }
 catch(e){
     print(e);

 }finally{
     isLoading(false);
}

  }
  }
