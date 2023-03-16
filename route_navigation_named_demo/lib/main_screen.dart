import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Home"),
          onPressed: (){
            Get.toNamed('/homeScreen');
          },
        ),
      ),
    );
  }
}
