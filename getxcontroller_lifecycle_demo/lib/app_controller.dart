import 'dart:async';

import 'package:get/get.dart';

class AppController extends GetxController {
  var running = true;
  var count = 0;

  void increment() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      update();
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("In On Init");
    increment();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    print("In On Close");
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    print("In On Ready");
  }
}
