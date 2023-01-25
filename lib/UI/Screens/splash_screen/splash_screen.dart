import 'package:attendance_app/UI/Screens/login_screen/login_screen.dart';
import 'package:attendance_app/UI/Screens/profile_screen/profile_screen.dart';
import 'package:attendance_app/UI/resources/assets_manager.dart';
import 'package:attendance_app/UI/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: AssetsManager.logo,
      nextScreen: const ProfileScreen(),
      duration: 1000,
      backgroundColor: ColorManager.primaryClr,
    );
  }
}
