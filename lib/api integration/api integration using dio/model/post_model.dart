import 'dart:convert';


class ProductModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  ProductModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });
  ProductModel.fromJson(Map<String, dynamic> json){
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    body = json["body"];
  }

}
