import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';

class DetailsDio extends StatelessWidget {
  int index;
  DetailsDio({super.key, required this.index});

  Product_controller controller = Get.find<Product_controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                controller.post[index].id.toString()
            ),
            Text(
                controller.post[index].title
            ),
            Text(
                controller.post[index].body
            )
          ],
        ),
      ),
    );
  }
}