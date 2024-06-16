import 'package:flutter/material.dart';
import 'package:todo_app/Screens/HomeScreen/note_screen.dart';
import 'package:todo_app/Screens/HomeScreen/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    NoteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            _selectedIndex = index;
            if (mounted) {
              setState(() {});
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.note_alt_sharp), label: "Notes"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
