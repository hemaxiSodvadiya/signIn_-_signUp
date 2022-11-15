import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_with_email_and_password_miner/screens/login.dart';

import '../helper/firebasde_auth_helper.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}
//
// Color(0xffFFCB2B),
// Color(0xffF5820D),

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('login');
                });
              },
              child: const Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
              ),
              style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 130),
                  backgroundColor: const Color(0xffFFCB2B),
                  // fixedSize: const Size(300, 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('sign_Up');
              });
            },
            child: const Text(
              "SIGN UP",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            style: OutlinedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 130),
                side: const BorderSide(color: Color(0xffF5820D), width: 3),
                // fixedSize: const Size(300, 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(children: const [
            Expanded(
                child: Divider(
              color: Colors.white,
              indent: 10,
              endIndent: 10,
            )),
            Text(
              "OR",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            Expanded(
                child: Divider(
              color: Colors.white,
              indent: 10,
              endIndent: 10,
            ))
          ]),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () async {
              User? user = await FirebaseAuthHelper.firebaseAuthHelper
                  .signInWithGoogle();
              if (user != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Successfully signed in with google"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );

                Navigator.of(context).pushReplacementNamed('dashboard');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("signed in with google Failed"),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                print("closed....");
              }
            },
            child: Container(
              height: 80,
              width: 80,
              child: Image.asset(
                'assets/google.png',
                scale: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  width: 3,
                  color: Color(0xffF5820D),
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
