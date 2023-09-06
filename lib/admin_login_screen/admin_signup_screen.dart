import 'package:flutter/material.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_login_screen.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_verification_screen.dart';

class AdminSignup extends StatefulWidget {
  static const String id = 'adminsignup-screen';

  const AdminSignup({super.key});

  @override
  State<AdminSignup> createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  bool _passwordInVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
          padding: const EdgeInsets.all(75),
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
                  "Hello There!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Let's begin your journey with us",
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
              'Create your account',
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                fillColor: Colors.purple.shade50,
                filled: true,
                hintText: 'UserName',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 2.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 1.5),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                fillColor: Colors.purple.shade50,
                filled: true,
                hintText: 'Mobile no',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 2.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 1.5),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                fillColor: Colors.purple.shade50,
                filled: true,
                hintText: 'Email',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 2.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 1.5),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              obscureText: _passwordInVisible,
              decoration: InputDecoration(
                fillColor: Colors.purple.shade50,
                filled: true,
                hintText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _passwordInVisible =
                          !_passwordInVisible; //change boolean value
                    });
                  },
                  icon: Icon(
                    _passwordInVisible
                        ? Icons.visibility_off
                        : Icons.visibility, //change icon based on boolean value
                    color: Colors.grey,
                  ),
                ),
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 2.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide:
                      BorderSide(color: Colors.purple.shade50, width: 1.5),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor)),
                onPressed: () async {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Admin_Verification.id, (route) => true);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, Admin_login.id, (route) => true);
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.deepPurple),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
