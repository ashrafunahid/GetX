import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_screen.dart';
import 'main_screen.dart';
import 'next_screen.dart';

void main(){
  runApp(GetMaterialApp(
    title: "Route Navigation Named",
    initialRoute: '/',
    defaultTransition: Transition.zoom,
    getPages: [
      GetPage(name: '/', page: () => MainScreen()),
      GetPage(name: '/homeScreen', page: () => HomeScreen()),
      GetPage(name: '/nextScreen', page: () => NextScreen(), transition: Transition.leftToRight),
    ],
  ));
}
