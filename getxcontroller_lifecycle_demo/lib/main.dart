import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app_body.dart';

void main() => runApp(GetMaterialApp(
  title: 'GetX Controller Lifecycle Demo',
  home: Scaffold(
    appBar: AppBar(
      title: Text("GetX Controller Lifecycle Demo"),
      centerTitle: true,
    ),
    body: AppBody(),
  ),
));