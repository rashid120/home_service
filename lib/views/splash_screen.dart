import 'dart:async';

import 'package:flutter/material.dart';
import 'package:home_service/views/intro_screens/intro_main_screen.dart';
import 'package:home_service/views/utils/app_size.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  goIntroScreen(){
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const IntroScreen(),));
    },);
  }

  @override
  void initState() {
    super.initState();
    goIntroScreen();
  }

  @override
  Widget build(BuildContext context) {

    var size = AppSize(context: context);
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/home_logo.png', width: size.getWidth * 0.3,),
      ),
    );
  }
}
