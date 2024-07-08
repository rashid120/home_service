
import 'package:flutter/material.dart';
import 'package:home_service/extensions/space.dart';
import 'package:home_service/views/intro_screens/intro_contents.dart';
import 'package:home_service/views/utils/app_size.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  int _currentIndex = 0;
  final List<String> _sliderImage = [
    'assets/images/intro_first.jpg',
    'assets/images/intro_second.jpg',
    'assets/images/intro_third.jpg',
  ];

  void _nextSlide() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _sliderImage.length;
    });
  }

  @override
  Widget build(BuildContext context) {

    AppSize size = AppSize(context: context);
    return Scaffold(
      body:  GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.primaryVelocity! > 0) {
            // Swipe left (slide to previous)
            setState(() {
              _currentIndex = (_currentIndex - 1) % _sliderImage.length;
            });
          } else if (details.primaryVelocity! < 0) {
            // Swipe right (slide to next)
            _nextSlide();
          }
        },

        child: Stack(
          children: [
            Image.asset(_sliderImage[_currentIndex], height: size.getHeight, width: size.getWidth, fit: BoxFit.cover,),

            Positioned(bottom: 0,child: Container(
              width: size.getWidth,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    10.0.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        for(int i=0; i < _sliderImage.length; i++)
                          Container(
                            width: i==_currentIndex ? 25: 12,
                            height: 12,
                            margin: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: i == _currentIndex ? Colors.white : Colors
                                    .grey.shade800
                            ),
                          ),
                        10.0.horizontalSpace
                      ],
                    ),

                    _currentIndex ==0 ? IntroContents().firstIntro(nextSlide: _nextSlide): const SizedBox(),
                    _currentIndex ==1 ? IntroContents().secondIntro(nextSlide: _nextSlide): const SizedBox(),
                    _currentIndex ==2 ? IntroContents().thirdIntro(context: context): const SizedBox(),
                  ],
                ),
              )
            )),
          ],
        ),
      ),
    );
  }
}
