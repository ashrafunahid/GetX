import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './count_controller.dart';

class AppBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<CountController>(
        init: CountController(),
        builder: (controller){
          return Text("You've clicked the button ${controller.count} times");
        },
      ),
    );
  }
}
