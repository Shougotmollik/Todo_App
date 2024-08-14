import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score_app/views/screens/auth_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashScreen(),
    );
  }
}
