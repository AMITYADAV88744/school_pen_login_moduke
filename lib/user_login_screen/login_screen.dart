import 'package:flutter/material.dart';
import 'package:school_pen_login_module/user_login_screen/face_id_screen.dart';

import '../custom/CurveClipper.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipPath(
              clipper: CurveClipper(),
              child: SizedBox(
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/background1.png',
                              fit: BoxFit.fill)),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.asset('assets/images/Brand Character.png',
                            height: 120, width: 120),
                      ),
                    ],
                  ))),
          const SizedBox(),
          Padding(
            padding: const EdgeInsets.only(left: 13),
            child: Image.asset('assets/images/SchoolPenlo.jpg'),
          ),
          const SizedBox(),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Learn everything with AI",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "learn and grow with ai to stay up to date, with ever evolving demand of ai in the future",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              onPressed: () async {
                Navigator.pushNamedAndRemoveUntil(
                    context, FaceIdScreen.id, (route) => true);
              },
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              onPressed: () async {},
              child: const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Join As admin',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
