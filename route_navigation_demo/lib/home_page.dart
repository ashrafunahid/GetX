import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("This is Home Page"),
            ElevatedButton(
                onPressed: (){},
                child: Text("Go to Next"),
            ),
            ElevatedButton(
                onPressed: (){
                  // Get.back();
                  // If want to return some data while backing to next page
                  Get.back(result: "Data from Home Page");
                },
                child: Text("Go to Back"),
            ),
            // Text(Get.arguments),
          ],
        ),
      ),
    );
  }
}
