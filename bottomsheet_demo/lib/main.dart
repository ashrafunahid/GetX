import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    title: "BottomSheet Demo",
    home: Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet Demo"),
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
        child: Text("Show Bottom Sheet"),
        onPressed: (){
          Get.bottomSheet(
            Container(
              child: Wrap(
                children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text("Light Theme"),
                    onTap: (){
                      Get.changeTheme(ThemeData.light());
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text("Dark Theme"),
                    onTap: (){
                      Get.changeTheme(ThemeData.dark());
                    },
                  ),
                ],
              ),
            ),
            barrierColor: Colors.black12,
            backgroundColor: Colors.deepOrange,
            isDismissible: true,
            enableDrag: true, // By Default true
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)
              ),
              side: BorderSide(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 2.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
