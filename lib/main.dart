import 'package:face_camera/face_camera.dart';
import 'package:flutter/material.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_login_screen.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_school_info_screen.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_signup_screen.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_verification_screen.dart';
import 'package:school_pen_login_module/user_login_screen/chooseprofilescreen.dart';
import 'package:school_pen_login_module/user_login_screen/face_id_screen.dart';
import 'package:school_pen_login_module/user_login_screen/fillnamescreen.dart';
import 'package:school_pen_login_module/user_login_screen/fillregion_screen.dart';
import 'package:school_pen_login_module/user_login_screen/fingerprint_screen.dart';
import 'package:school_pen_login_module/user_login_screen/login_screen.dart';
import 'package:school_pen_login_module/user_login_screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Add this

  await FaceCamera.initialize(); //Add this

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Admin_login.id,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        FaceIdScreen.id: (context) => FaceIdScreen(),
        FingerPrintScreen.id: (context) => FingerPrintScreen(),
        FillName.id: (context) => FillName(),
        FillRegion.id: (context) => FillRegion(),
        ChooseProfile.id: (context) => ChooseProfile(),
        Admin_login.id: (context) => Admin_login(),
        AdminSignup.id: (context) => AdminSignup(),
        Admin_Verification.id: (context) => Admin_Verification(),
        Admin_School_Info.id: (context) => Admin_School_Info(),
      },
    );
  }
}
