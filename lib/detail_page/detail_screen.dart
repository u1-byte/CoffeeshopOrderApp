import 'package:coffeshop_app/detail_page/detail_screen_mobile.dart';
import 'package:coffeshop_app/detail_page/detail_screen_web.dart';
import 'package:coffeshop_app/model/drinks.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Drinks drinkData;
  DetailScreen({required this.drinkData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return DetailScreenMobile(drinkData: drinkData,);
        } else {
          return DetailScreenWeb(drinkData: drinkData,);
        }
      }),
    );
  }
}