import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app_body.dart';

void main() => runApp(GetMaterialApp(
  title: 'Unique ID in Getbuilder',
  home: Scaffold(
    appBar: AppBar(
      title: Text("Unique ID in Getbuilder"),
    ),
    body: AppBody(),
  ),
));