import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app_controller.dart';

class AppBody extends StatelessWidget {

  AppController appController = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetBuilder<AppController>(
        // initState: (data) => appController.increment(),
        builder: (controller) {
          return Text("Count is ${controller.count}");
        }
      ),
    );
  }
}
