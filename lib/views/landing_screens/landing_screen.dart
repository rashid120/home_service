import 'package:flutter/material.dart';
import 'package:home_service/colors.dart';
import 'package:home_service/views/landing_screens/account_screen.dart';
import 'package:home_service/views/landing_screens/bookings_screen.dart';
import 'package:home_service/views/landing_screens/home_screen.dart';
import 'package:home_service/views/landing_screens/search_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  var _currentIndex = 0;

  List landingScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const BookingsScreen(),
    const AccountScreen()
  ];

  changeIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: landingScreen[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: 'Bookings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      currentIndex: _currentIndex,
      onTap: changeIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: fikColor,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
