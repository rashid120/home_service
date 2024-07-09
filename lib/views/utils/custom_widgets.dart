
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

  Widget profileMenu({IconData? trailing}) => Column(

    children: [
      myListTile(icon: Icons.person, title: 'My Profile',trailing: trailing, onTap: (){}),
      myListTile(icon: Icons.favorite, title: 'My Favorites', onTap: (){}),
      myListTile(icon: Icons.notifications, title: 'Notification', onTap: (){}),
      myListTile(icon: Icons.calendar_month, title: 'My Bookings', onTap: (){}),
      myListTile(icon: Icons.currency_exchange, title: 'Refer and earn', onTap: (){}),
      myListTile(icon: Icons.email, title: 'Contact Us', onTap: (){}),
      myListTile(icon: Icons.question_mark, title: 'Help Center', onTap: (){}),
      myListTile(icon: Icons.logout, title: 'Logout', onTap: (){}),
    ],
  );

  Widget myListTile({required IconData icon, required String title, IconData? trailing, VoidCallback? onTap}) => ListTile(
    leading: Icon(icon, color: primaryColor,),
    title: Text(title, style: Styles().normalTextStyle(color: primaryColor),),
    trailing: Icon(trailing),
    onTap: onTap,
    horizontalTitleGap: 1.0,
  );
}