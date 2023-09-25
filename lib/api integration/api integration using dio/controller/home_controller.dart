import 'package:flutter/animation.dart';
import 'package:flutter_project_may/api%20integration/api%20integration%20using%20dio/service/dio_service.dart';
import 'package:flutter_project_may/api%20integration/api%20integration%20using%20http%20and%20getx/model/product%20model.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Product_controller extends GetxController{
  RxList post=RxList(); //the list post is observable and empty(initially)
  RxBool isLoading=true.obs;
  RxBool isListScrollDown=false.obs;
  RxBool isInternetConnected=true.obs;

  var url="https://jsonplaceholder.typicode.com/posts";
  //to perform scroll action animation etc on scrollable positioned list
  var itemController=ItemScrollController();

  //for checking internet connection
  checkifInternetConnect() async{
  isInternetConnected.value=await InternetConnectionChecker().hasConnection;
}

//calling api and get response
getposts()async{
    checkifInternetConnect();
    isLoading.value=true;
    var response=await DioService().getMethod(url);
    if(response.statuscode == 200){
      response.data.forEach((element){
        post.add(ProductModel.fromJson(element));
      });
      isLoading.value=false;
    }
}

//Scroll listview to down
ScrolltoDown(){
    itemController.scrollTo(index: post.length-8, duration: Duration(seconds: 3,),
        curve: Curves.linearToEaseOut);
    isListScrollDown.value=true;

}

//scroll listvie to top
ScrolltoUp(){
    itemController.scrollTo(index: 0, duration: Duration(seconds: 3),
        curve: Curves.easeInBack);
    isListScrollDown.value=false;
}

//acting perform when the app is loaded

@override
  void oninit() {
  getposts();
  isInternetConnected();
  super.onInit();
}
}