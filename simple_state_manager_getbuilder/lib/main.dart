import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_state_manager_getbuilder/count_controller.dart';

import './app_body.dart';

void main() => runApp(GetMaterialApp(
  title: "Simple State Management with GetBuilder",
  home: Scaffold(
    appBar: AppBar(
      title: Text("Simple State Management with GetBuilder"),
      centerTitle: true,
    ),
    body: AppBody(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Get.find<CountController>().increament();
      },
      child: Icon(Icons.add),
    ),
  ),
));