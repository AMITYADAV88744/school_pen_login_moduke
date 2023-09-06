import 'package:flutter/material.dart';
import 'package:school_pen_login_module/user_login_screen/fillregion_screen.dart';

import '../custom/CurveClipper.dart';

class FillName extends StatefulWidget {
  static const String id = 'fillname-screen';

  const FillName({super.key});

  @override
  State<FillName> createState() => _FillNameState();
}

class _FillNameState extends State<FillName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.start,

          children: [
            ClipPath(
                clipper: CurveClipper(),
                child: SizedBox(
                    height: 360,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: <Widget>[
                        Positioned(
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                  'assets/images/background1.png',
                                  fit: BoxFit.fill)),
                        ),
                        Positioned(
                          top: 130.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset('assets/images/person.png',
                                height: 200, width: 200),
                          ),
                        )
                      ],
                    ))),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "How we should call you ?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.deepPurple),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    fillColor: Colors.purple.shade50,
                    filled: true,
                    hintText: 'Enter your name',
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.purple.shade50,
                        ),
                        borderRadius: BorderRadius.circular(30))),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor)),
                onPressed: () async {
                  Navigator.pushNamedAndRemoveUntil(
                      context, FillRegion.id, (route) => true);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Next',
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
      ),
    );
  }
}
