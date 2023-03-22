import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './person.dart';

class AppBody extends StatelessWidget {

  static final person = Person(name: "Ashraf Uddin", age: 30).obs;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Text("Name is: ${person.value.name}")),
    );
  }
}
