import 'package:get/get.dart';

class Person{

  // Making individual variable observable
  // var name = "Ashraf Uddin".obs;
  // var age = 30.obs;

  // Making the whole class ovservable
  var name;
  var age;
  Person({this.name, this.age});
}