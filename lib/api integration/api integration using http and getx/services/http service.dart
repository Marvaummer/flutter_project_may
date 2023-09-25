import '../model/product model.dart';
import 'package:http/http.dart'as http;
//get -read

class HttpService{
  static Future<List<ProductModel>>fetchProducts()async{
    var response=await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if(response.statusCode==200) {
      var data = response.body;
      return productModelFromJson(data); //it goes to product model
    }else{
      throw Exception();
    }
  }
}