import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_pen_login_module/user_login_screen/fillnamescreen.dart';

import '../custom/CurveClipper.dart';

class FingerPrintScreen extends StatefulWidget {
  static const String id = 'fingerprint-screen';

  const FingerPrintScreen({super.key});

  @override
  State<FingerPrintScreen> createState() => _FingerPrintScreenState();
}

class _FingerPrintScreenState extends State<FingerPrintScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, FillName.id, (route) => true);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  color: Colors.deepPurple,
                  height: 200,
                  child: Image.asset('assets/images/fingerbg.png'),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              decoration: const BoxDecoration(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 160,
                      width: 160,
                      child: Image.asset(
                        'assets/images/pingerprint.png',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "28%",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Touch Sensor",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Put your finger on the sensor and after you feel vibration.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
