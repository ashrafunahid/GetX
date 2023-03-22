import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './app_body.dart';

void main() => runApp(MaterialApp(
  title: 'Reactive State Management',
  home: Scaffold(
    appBar: AppBar(
      title: Text("Reactive State Management"),
      centerTitle: true,
    ),
    body: AppBody(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        AppBody.increament();
      },
      child: Icon(Icons.add, color: Colors.white,),
      elevation: 5.0,
      foregroundColor: Colors.blue,
    ),
  ),
));