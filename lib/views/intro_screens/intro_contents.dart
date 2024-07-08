import 'package:flutter/material.dart';
import 'package:home_service/extensions/space.dart';

class IntroContents{

  Widget firstIntro({required VoidCallback nextSlide}) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
    child: Column(
      children: [
        const Text('Give your home a makeover', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
        10.0.verticalSpace,
        const Text(
          "The best services that you could find for your home, as we have everything that you are in need",
          style: TextStyle(color: Colors.white, fontSize: 16,),
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
        const Text('Qualified Professionals', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
        10.0.verticalSpace,
        const Text(
          "Search From the list of Qualified Professionals around you as we bring the best one for you",
          style: TextStyle(color: Colors.white, fontSize: 16,),
          textAlign: TextAlign.center,
        ),

        30.0.verticalSpace,
        Align(alignment: Alignment.bottomRight,child: FloatingActionButton(onPressed: nextSlide, mini: true,shape: const CircleBorder(),backgroundColor: Colors.white, child: const Icon(Icons.arrow_forward_rounded, color: Colors.grey,),))
      ],
    ),
  );

  Widget thirdIntro() => Container(

    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    child: Column(
      children: [
        const Text('Easy & Fast Service', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),textAlign: TextAlign.center,),
        10.0.verticalSpace,
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Book your service at your convenient time and enjoy the hassle free process",
            style: TextStyle(color: Colors.white, fontSize: 16,),
            textAlign: TextAlign.center,
          ),
        ),

        15.0.verticalSpace,
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){},style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)), child: Text('Get Started', style: TextStyle(color: Colors.black),)))
      ],
    ),
  );

}