import 'package:flutter/material.dart';
import 'package:get/get.dart';
void main(){
  runApp(GetMaterialApp(
    title: "Snackbar",
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Snackbar with GetX"),
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
        child: Text("Show Snackbar"),
        onPressed: (){
          Get.snackbar(
            "Snackbar Title",
            "This will be snackbar message",
            titleText: Text("Another Title"),
            messageText: Text("Another Message"),
            snackPosition: SnackPosition.BOTTOM,
            // backgroundColor: Colors.white70,
            borderRadius: 10.0,
            margin: EdgeInsets.all(30.0),
            maxWidth: double.infinity,
            // backgroundGradient: const LinearGradient(colors: [Colors.red,Colors.green]),
            // borderColor: Colors.yellow,
            // borderWidth: 4,
            // boxShadows: [
            //   const BoxShadow(
            //       color: Colors.black,
            //       offset: Offset(30,50),
            //       spreadRadius: 20.0,
            //       blurRadius: 8.0
            //   ),
            // ],
            // isDismissible: true,
            dismissDirection: DismissDirection.horizontal,
            // forwardAnimationCurve: Curves.easeInQuart,
            duration: Duration(milliseconds: 3000),
            // icon: Icon(
            //   Icons.send,
            //   color: Colors.white,
            // ),
            // shouldIconPulse: true,
            // leftBarIndicatorColor: Colors.red,
            mainButton: TextButton(
              onPressed:(){},
              child: Text("Retry"),
            ),
            onTap: (val){
              print("Snackbar Clicked");
            },
            // overlayBlur: 5.0,
            // overlayColor: Colors.black,
            padding: EdgeInsets.all(10),
            // showProgressIndicator: true,
            // progressIndicatorBackgroundColor: Colors.deepOrange,
            // progressIndicatorValueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            // reverseAnimationCurve: Curves.bounceInOut,
            // snackbarStatus: (val){print(val);},
            // This overrides the entire UI elements:
            // userInputForm: Form(
            //   child: Row(
            //     children: [
            //       Expanded(child: TextField(
            //       ))
            //     ],
            //   ),
            // )
          );
        },
      ),
    );
  }
}
