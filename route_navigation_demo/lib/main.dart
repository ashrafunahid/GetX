import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_navigation_demo/home_page.dart';

void main(){
  runApp(GetMaterialApp(
    title: "Route Navigation Demo",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Route Navigation Demo"),
        centerTitle: true,
      ),
      body: AppBody(),
    ),
  ));
}

class AppBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Go To Home"),
        onPressed: () async {
          // Get.to(
          //     HomePage(),
          //     fullscreenDialog: true,
          //   transition: Transition.zoom,
          //   duration: Duration(milliseconds: 2000),
          //     curve: Curves.bounceInOut
          // );
          // Permanently route to next page, close current page
          // Get.off(HomePage());
          // Permanently route to next page, close all current page
          // Get.offAll(HomePage());
          // Going to next page with arguments
          //  Get.to(HomePage(), arguments: "This is arguments from Main Page");
          // If we want to receive some data while back from routed page
          var data = await Get.to(HomePage());
          print(data);
        },
      ),
    );
  }
}
