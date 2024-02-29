import 'package:flutter/material.dart';
import 'package:navi/pages/home_page.dart';



void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context)=> HomePage(),
    },
  ));
}

