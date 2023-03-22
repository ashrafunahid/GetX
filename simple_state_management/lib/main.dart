import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_state_management/person.dart';

import './app_body.dart';

void main() => runApp(MaterialApp(
  title: "Simple State Management",
  home: Scaffold(
    appBar: AppBar(
      title: Text("Simple State Management"),
      centerTitle: true,
    ),
    body: AppBody(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        AppBody.person.update((val) {
          AppBody.person.value.name = AppBody.person.value.name.toString().toUpperCase();
        });
      },
      child: Icon(Icons.arrow_upward),
      elevation: 5.0,
    ),
  ),
));