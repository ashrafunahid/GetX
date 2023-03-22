import 'package:get/get.dart';
import './person.dart';


class PersonController extends GetxController{

  // For individual variable
  // var person = new Person();
  // void convertToUpperCase(){
  //   person.name.value = person.name.value.toUpperCase();
  // }

  // For making the whole class observable
  var person = Person(name: "Ashraf Uddin", age: 30).obs;
  void toUpperCase(){
    person.update((val) {
      val!.name = val.name.toString().toUpperCase();
    });
  }
}