import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../model/product model.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5)
                ),
                child:CachedNetworkImage(
                  imageUrl:product.image!,
                    fit:BoxFit.cover
                )
                ),
              SizedBox(
                height: 10,

              ),
              Text(
                product.title!,
                style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),
              ),
              Text(
              "${product.rating?.rate!}")

            ],
          )
        ],
      ),
    );
  }
}
