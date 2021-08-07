import 'package:coffeshop_app/home_page/main_screen_mobile.dart';
import 'package:coffeshop_app/home_page/main_screen_web.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String name;

  MainScreen({required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return MainScreenMobile(name: name,);
        } else {
          return MainScreenWeb(name: name,);
        }
      }),
    );
  }
}