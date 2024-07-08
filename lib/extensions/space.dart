import 'package:flutter/material.dart';

extension Space on double{

  Widget get verticalSpace => SizedBox(height: this,);
  Widget get horizontalSpace => SizedBox(width: this,);
}