import 'dart:io';

import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:school_pen_login_module/user_login_screen/fingerprint_screen.dart';

class FaceIdScreen extends StatefulWidget {
  const FaceIdScreen({super.key});
  static const String id = 'faceid-screen';

  @override
  State<FaceIdScreen> createState() => _FaceIdScreenState();
}

class _FaceIdScreenState extends State<FaceIdScreen> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  File? _capturedImage;
  int progressvalue = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SmartFaceCamera(
            autoCapture: true,
            defaultCameraLens: CameraLens.front,
            indicatorShape: IndicatorShape.square,
            onFaceDetected: (Face? face) {
              setState(() {
                progressvalue = 50;
              });
            },
            onCapture: (File? image) {
              setState(() {
                _capturedImage = image;
              });
              Future.delayed(Duration(seconds: 30));
              finer();
            }),
      ),
      bottomSheet: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Look Left",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const Text(
              "Keep your face in the frame",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "$progressvalue%",
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 20,
              width: 300,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: progressvalue / 100,
                  valueColor:
                      const AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void finer() {
    if (_capturedImage != null) {
      progressvalue = 90;

      Navigator.pushNamedAndRemoveUntil(
          context, FingerPrintScreen.id, (route) => true);
    }
  }
}
