import 'package:get/get.dart';

class CountController extends GetxController{
  var count = 0;
  void increament(){
    count++;
    update();
  }
}