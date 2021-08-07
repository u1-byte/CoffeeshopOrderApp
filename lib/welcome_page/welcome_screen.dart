import 'package:coffeshop_app/welcome_page/welcome_screen_mobile.dart';
import 'package:coffeshop_app/welcome_page/welcome_screen_web.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return WelcomeScreenMobile();
        } else {
          return WelcomeScreenWeb();
        }
      }),
    );
  }
}
