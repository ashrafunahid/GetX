import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './my_controller.dart';

class AppBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetX<MyController>(
        init: MyController(),
          builder: (controller) {
           return Text("You've clicked the button for ${controller.count} times");
          }
      ),
    );
  }
}
