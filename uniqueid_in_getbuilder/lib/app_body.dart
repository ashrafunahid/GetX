import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './my_controller.dart';

class AppBody extends StatelessWidget {

  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GetBuilder<MyController>(
            id: 'count',
              builder: (controller){
                return Text("Count is ${controller.count}");
              }
          ),
          GetBuilder<MyController>(
              builder: (controller){
                return Text("Count is ${controller.count}");
              }
          ),
          ElevatedButton(
              onPressed: (){
                myController.increment();
              },
              child: Text("Increment"),
          )
        ],
      ),
    );
  }
}
