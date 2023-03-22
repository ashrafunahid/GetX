import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app_body.dart';
import './my_controller.dart';

void main() => runApp(GetMaterialApp(
  title: "Reactive State Management with controller",
  home: Scaffold(
    appBar: AppBar(
      title: Text("Reactive State Management with Controller"),
      centerTitle: true,
    ),
    body: AppBody(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        Get.find<MyController>().increament();
      },
      child: Icon(Icons.add),
    ),
  ),
));