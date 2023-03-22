import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive_state_management/utils.dart';

class AppBody extends StatelessWidget {

  static void increament(){
    Utils.count++;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Text("You tapped the button for ${Utils.count} times")),
    );
  }
}
