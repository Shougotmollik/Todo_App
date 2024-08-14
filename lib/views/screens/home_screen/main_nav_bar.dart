import 'package:flutter/material.dart';
import 'package:live_score_app/views/screens/home_screen/home_screen.dart';
import 'package:live_score_app/views/screens/home_screen/live_screen.dart';
import 'package:live_score_app/views/screens/home_screen/match_screen.dart';
import 'package:live_score_app/views/screens/home_screen/news_screen.dart';

class MainNavBar extends StatefulWidget {
  const MainNavBar({super.key});

  @override
  State<MainNavBar> createState() => _MainNavBarState();
}

class _MainNavBarState extends State<MainNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    LiveScreen(),
    MatchScreen(),
    NewsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (value) {
            _selectedIndex = value;
            setState(() {});
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.deepOrangeAccent.shade100,
          selectedItemColor: Colors.deepOrangeAccent.shade400,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.live_tv), label: "Live"),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_score_outlined), label: "Match"),
            BottomNavigationBarItem(
                icon: Icon(Icons.newspaper_sharp), label: "News"),
          ]),
    );
  }
}
