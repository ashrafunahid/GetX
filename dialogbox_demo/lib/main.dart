import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(GetMaterialApp(
    title: "Dialog Box Demo",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Dialog Box Demo"),
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
        child: Text("Show Dialog"),
        onPressed: (){
          Get.defaultDialog(
            title: "Dialog Title",
            titleStyle: TextStyle(fontSize: 20),
            titlePadding: EdgeInsets.all(20.0),
            middleText: "This is Middle Text",
            middleTextStyle: TextStyle(fontSize: 16.0),
            backgroundColor: Colors.white,
            radius: 20,
            // Customize Middle Text
            content: Row(
              children: [
                Text("Hello"),
                TextButton(
                    onPressed: (){},
                    child: Text("This is a Button in Content"),
                ),
              ],
            ),

            // Default Cancel and Confirm Button
            textCancel: "Cancel",
            cancelTextColor: Colors.red,
            onCancel: (){print("Cancel Clicked!");},
            textConfirm: "Confirm",
            confirmTextColor: Colors.white,
            onConfirm: (){print("Confirm Clicked!");},
            buttonColor: Colors.blueGrey,
            // Customize or override default cancel and cofirm
            // cancel: Text("Abort", style: TextStyle(fontWeight: FontWeight.bold),),
            // confirm: Text("Ok", style: TextStyle(fontWeight: FontWeight.bold),),
            // actions: [
            //   ElevatedButton(
            //       onPressed: (){},
            //       child: Text("Action Button 1")
            //   ),
            //   ElevatedButton(
            //       onPressed: (){},
            //       child: Text("Action Button 2")
            //   ),
            // ],
            barrierDismissible: true,
          );
        },
      ),
    );
  }
}
