import 'dart:async';

import 'package:flutter/material.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash-screen';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.id, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.jpg', height: 250, width: 250,
              // color: Colors.cyan.shade900,
            ),
            Image.asset(
              'assets/images/SchoolPen.jpg', height: 250, width: 250,
              // color: Colors.cyan.shade900,
            ),
            const CircularProgressIndicator(
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
