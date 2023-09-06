import 'package:flutter/material.dart';
import 'package:school_pen_login_module/admin_login_screen/admin_login_screen.dart';

class Admin_School_Info extends StatefulWidget {
  static const String id = 'adminschoolinfo-screen';

  const Admin_School_Info({super.key});

  @override
  State<Admin_School_Info> createState() => _Admin_School_InfoState();
}

class _Admin_School_InfoState extends State<Admin_School_Info> {
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
                  "Almost Done!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Only the last step of the process remains",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 12),
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
              'Enter your school info',
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
                hintText: 'School name',
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
                hintText: 'Address',
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
                hintText: 'DIOS code',
                suffixIcon: const Icon(
                  Icons.check_circle_outline_rounded,
                  color: Colors.deepPurple,
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
            TextField(
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              obscureText: _passwordInVisible,
              decoration: InputDecoration(
                fillColor: Colors.purple.shade50,
                filled: true,
                hintText: 'Upload document',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.file_open_rounded,
                    color: Colors.deepPurple,
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
                onPressed: () async {},
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Login',
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
                        context, Admin_login.id, (route) => false);
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
