import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score_app/views/screens/home_screen/home_screen.dart';
import 'package:live_score_app/views/screens/home_screen/main_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _moveToNextScreen();
    super.initState();
  }

  Future<void> _moveToNextScreen() async {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (mounted) {
          Get.off(const MainNavBar());
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepOrangeAccent.shade200,
        body: const Center(
          child: Text(" APP LOGO"),
        ));
  }
}
