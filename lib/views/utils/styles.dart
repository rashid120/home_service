import 'package:flutter/material.dart';
import 'package:home_service/colors.dart';
import 'package:home_service/views/utils/app_size.dart';

const boldFont = FontWeight.bold;

class Styles{

  boldTextStyle({color=primaryColor}) => TextStyle(
    fontSize: largeFontSize,
    fontWeight: boldFont,
    color: color
  );

  normalTextStyle({color=subPrimaryColor, weight=FontWeight.normal}) => TextStyle(
    color: color,
    fontSize: normalFontSize,
    fontWeight: weight
  );
}