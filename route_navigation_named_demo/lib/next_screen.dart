import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Next Screen"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go to Back"),
              onPressed: (){
                Get.back();
              },
            ),
            Text("First name is: ${Get.parameters['first_name']} & Last Name is: ${Get.parameters['last_name']}"),
          ],
        ),
      ),
    );
  }
}
