import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Admin_Verification extends StatefulWidget {
  static const String id = 'adminverify-screen';

  const Admin_Verification({super.key});

  @override
  State<Admin_Verification> createState() => _Admin_VerificationState();
}

class _Admin_VerificationState extends State<Admin_Verification> {
  String currentText = "";
  bool hasError = false;
  bool _validate = false;

  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          padding: const EdgeInsets.all(60),
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).size.height / 1.8,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background1.png'),
                fit: BoxFit.fill),
          ),
          child: const SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Why Verification?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "It ensures security and access to your account",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 13),
                )
              ],
            ),
          )),
      bottomSheet: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        height: MediaQuery.of(context).size.height / 1.6,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Verify your email',
              style: TextStyle(color: Colors.deepPurple, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'We have sent you a code by email',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 15,
            ),
            Form(
              key: formKey,
              child: PinCodeTextField(
                length: 4,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    borderRadius: BorderRadius.circular(5),
                    activeFillColor: Colors.white.withOpacity(0.5),
                    disabledColor: Colors.grey.withOpacity(0.5),
                    inactiveColor: Colors.black.withOpacity(0.5),
                    inactiveFillColor: Colors.grey.shade100,
                    selectedColor: Colors.black.withOpacity(0.5),
                    activeColor: Colors.black.withOpacity(0.5),
                    selectedFillColor: Colors.deepPurple.shade50,
                    errorBorderColor: Colors.redAccent),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                errorAnimationController: errorController,
                controller: textEditingController,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                textStyle: const TextStyle(color: Colors.grey),
                onCompleted: (v) {
                  if (v.length == 6) {
                    setState(() {
                      _validate = true;
                    });
                  }
                  if (v.length < 6) {
                    setState(() {
                      _validate = false;
                    });
                  }
                },
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
                appContext: context,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 65, right: 60),
              child: Text(
                "Don't you receive any code?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 80, right: 60),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend code',
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    ))),
          ],
        ),
      ),
    );
  }
}
