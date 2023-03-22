import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:separating_business_logic/person_controller.dart';

class AppBody extends StatelessWidget {

  PersonController personController = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(() => Text("Name is: ${personController.person.value.name}")),
    );
  }
}
