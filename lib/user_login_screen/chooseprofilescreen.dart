import 'package:flutter/material.dart';

import '../custom/CurveClipper.dart';

class ChooseProfile extends StatefulWidget {
  static const String id = 'chooseprofile-screen';

  const ChooseProfile({super.key});

  @override
  State<ChooseProfile> createState() => _ChooseProfileState();
}

class _ChooseProfileState extends State<ChooseProfile> {
  int p = 0;
  late String name = "Amit";

  @override
  void initState() {
    setState(() {
      p = 0;
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "How you gonna use this app?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.deepPurple),
              ),
            ),
            Visibility(
              visible: p == 1 || p == 2 || p == 3 ? false : true,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: p == 1
                              ? MaterialStateProperty.all(
                                  Theme.of(context).primaryColor)
                              : MaterialStateProperty.all(
                                  Colors.purple.shade100)),
                      onPressed: () async {
                        setState(() {
                          p = 1;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Student',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: p == 2
                              ? MaterialStateProperty.all(
                                  Theme.of(context).primaryColor)
                              : MaterialStateProperty.all(
                                  Colors.purple.shade100)),
                      onPressed: () async {
                        setState(() {
                          p = 2;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Teacher',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: p == 1 || p == 2 || p == 3 ? false : true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: p == 3
                              ? MaterialStateProperty.all(
                                  Theme.of(context).primaryColor)
                              : MaterialStateProperty.all(
                                  Colors.purple.shade100)),
                      onPressed: () async {
                        setState(() {
                          p = 3;
                        });
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Parent',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // We use visibilty to hide or unhide the profile description
            Visibility(
                visible: p == 0 || p == 5 ? false : true,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      p = 5;
                    });
                    print(p);
                  },
                  child: Card(
                      child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                          /* Here we use condition to set profile image according profile selection
                           student=1 ,
                           teacher=2
                           parents=3
                           */
                          p == 1
                              ? 'assets/images/student.png'
                              : p == 2
                                  ? 'assets/images/teacher.png'
                                  : 'assets/images/parent.png'),
                      Positioned(
                        // The Positioned widget is used to position the text inside the Stack widget
                        bottom: 8,
                        right: 15,

                        child: p == 1
                            ? Container(
                                // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                width: 190,
                                padding: const EdgeInsets.all(10),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Students",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Eager to learn and grow? Join as a student to access knowledge, engage with peers, and thrive. ',
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ],
                                ))
                            : p == 2
                                ? Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 190,
                                    padding: const EdgeInsets.all(10),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Teacher",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          "Inspire and educate the future generation.Opt for the teacher profile to share knowledge and mentor students.",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ))
                                : Container(
                                    // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                                    width: 190,
                                    padding: const EdgeInsets.all(10),
                                    child: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Parents",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.white),
                                        ),
                                        Text(
                                          'Ready to empower your childs education journey? Choose the parent profile to support and monitor progress.',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    )),
                      )
                    ],
                  )),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor)),
                onPressed: () async {
                  Navigator.pushNamedAndRemoveUntil(
                      context, ChooseProfile.id, (route) => false);
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
