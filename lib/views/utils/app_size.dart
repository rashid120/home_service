import 'package:flutter/material.dart';

const largeFontSize = 30.0;
const normalFontSize = 16.0;

class AppSize{

  BuildContext context;
  AppSize({required this.context});

  double get getHeight => MediaQuery.of(context).size.height;
  double get getWidth => MediaQuery.of(context).size.width;

}