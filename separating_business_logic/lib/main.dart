import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:separating_business_logic/person_controller.dart';

import './app_body.dart';

void main() => runApp(GetMaterialApp(
  title: "Separating Business Logic",
  home: Scaffold(
    appBar: AppBar(
      title: Text("Separating Business Logic"),
      centerTitle: true,
    ),
    body: AppBody(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        PersonController personController = Get.put(PersonController());
        // personController.convertToUpperCase();
        personController.toUpperCase();
      },
      child: Icon(Icons.arrow_upward),
    ),
  ),
));