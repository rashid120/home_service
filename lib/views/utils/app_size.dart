import 'package:flutter/material.dart';

class AppSize{

  BuildContext context;
  AppSize({required this.context});

  double get getHeight => MediaQuery.of(context).size.height;
  double get getWidth => MediaQuery.of(context).size.width;

}