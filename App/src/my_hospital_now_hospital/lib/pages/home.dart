import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import 'package:my_hospital_now_hospital/theme/colors.dart';
import 'hospital_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    const HomePage(),
    const HospitalPage(),
  ];

  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: _pages),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              activeColor: primary,
              inactiveColor: Colors.black,
              textAlign: TextAlign.right,
              title: const Text('Home'),
              icon: const Icon(Icons.home)),
          BottomNavyBarItem(
              activeColor: primary,
              inactiveColor: Colors.black,
              textAlign: TextAlign.right,
              title: const Text('Hospital'),
              icon: const Icon(Icons.medical_services_rounded)),
        ],
      ),
    );
  }
}
