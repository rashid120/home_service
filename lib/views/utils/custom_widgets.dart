
import 'package:flutter/material.dart';
import 'package:home_service/colors.dart';
import 'package:home_service/views/utils/app_size.dart';
import 'package:home_service/views/utils/styles.dart';

class CustomWidgets{

  Widget appButton({required VoidCallback onPress, required String text}) => SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
          onPressed: onPress,
          style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.black)),
          child: Text(text, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
  );

  Widget authTextField({required String hintText, Widget? preFixIcon, double leftPadding=20, Widget? suffixIcon, obscureText=false}) => Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      color: Colors.grey.withOpacity(0.2)
    ),
    child: Center(
      child: Padding(
        padding: EdgeInsets.only(left: leftPadding),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styles().normalTextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: preFixIcon,
            suffixIcon: suffixIcon,
          ),
        ),
      ),
    ),
  );

  Widget loginSignUpText({required String text, required String onTapText, required VoidCallback onPress, color=primaryColor}) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text, style: const TextStyle(fontSize: normalFontSize),),
      InkWell(
        onTap: onPress,
        child: Text(onTapText, style: Styles().normalTextStyle(weight: boldFont, color: color),),
      )
    ],
  );
}