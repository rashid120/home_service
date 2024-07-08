import 'package:flutter/material.dart';
import 'package:home_service/colors.dart';
import 'package:home_service/extensions/space.dart';
import 'package:home_service/views/auth_screens/login_screen.dart';
import 'package:home_service/views/utils/styles.dart';

class IntroContents{

  var style = Styles();

  Widget firstIntro({required VoidCallback nextSlide}) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
    child: Column(
      children: [
        Text('Give your home a makeover', style: style.boldTextStyle(color: subPrimaryColor),textAlign: TextAlign.center,),
        10.0.verticalSpace,
        Text(
          "The best services that you could find for your home, as we have everything that you are in need",
          style: style.normalTextStyle(),
          textAlign: TextAlign.center,
        ),

        30.0.verticalSpace,
        Align(alignment: Alignment.bottomRight,child: FloatingActionButton(onPressed: nextSlide, mini: true,shape: const CircleBorder(),backgroundColor: Colors.white, child: const Icon(Icons.arrow_forward_rounded, color: Colors.grey,),))
      ],
    ),
  );

  Widget secondIntro({required VoidCallback nextSlide}) => Container(

    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
    child: Column(
      children: [
        Text('Qualified Professionals', style: style.boldTextStyle(color: subPrimaryColor),textAlign: TextAlign.center,),
        10.0.verticalSpace,
        Text(
          "Search From the list of Qualified Professionals around you as we bring the best one for you",
          style: style.normalTextStyle(),
          textAlign: TextAlign.center,
        ),

        30.0.verticalSpace,
        Align(alignment: Alignment.bottomRight,child: FloatingActionButton(onPressed: nextSlide, mini: true,shape: const CircleBorder(),backgroundColor: Colors.white, child: const Icon(Icons.arrow_forward_rounded, color: Colors.grey,),))
      ],
    ),
  );

  Widget thirdIntro({required BuildContext context}) => Container(

    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    child: Column(
      children: [
        Text('Easy & Fast Service', style: style.boldTextStyle(color: subPrimaryColor),textAlign: TextAlign.center,),
        10.0.verticalSpace,
         Padding(padding: const EdgeInsets.all(8.0),
          child: Text(
            "Book your service at your convenient time and enjoy the hassle free process",
            style: style.normalTextStyle(),
            textAlign: TextAlign.center,
          ),
        ),

        15.0.verticalSpace,
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
        },style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(subPrimaryColor)), child: const Text('Get Started', style: TextStyle(color: primaryColor),)))
      ],
    ),
  );

}