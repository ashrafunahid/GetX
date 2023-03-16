import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("This is Home Screen"),
            ElevatedButton(
                onPressed: (){
                  Get.toNamed('/nextScreen?first_name=Ashraf&last_name=Uddin');
                },
                child: Text("Go to Next"),
            ),
            ElevatedButton(
                onPressed: (){
                  Get.back();
                },
                child: Text("Go to Back"),
            ),
          ],
        ),
      ),
    );
  }
}
