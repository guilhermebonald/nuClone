import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nubank/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.noTransition,
      home: HomePage(),
    );
  }
}
