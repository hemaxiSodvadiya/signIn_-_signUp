import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../common/border.dart';
import '../common/curve.dart';
import '../global/global.dart';
import '../helper/firebasde_auth_helper.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Opacity(
                  opacity: 0.75,
                  child: CustomPaint(
                    size: Size(width, (width * 0.69).toDouble()),
                    //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ),
                CustomPaint(
                  size: Size(width, (width * 0.5833333333333334).toDouble()),
                  //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                        style: const TextStyle(
                          color: Color(0xffFFCB2B),
                        ),
                        onSaved: (val) {
                          Global.email = val!;
                        },
                        validator: (val) {
                          (val!.isEmpty) ? 'Enter your email first' : null;
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: const TextStyle(
                            fontSize: 16,
                            color: Color(0xffFFCB2B),
                          ),
                          prefixIcon: const Icon(
                            Icons.people,
                            color: Color(0xffFFCB2B),
                          ),
                          border: myEnabledBorder(),
                          enabledBorder: myEnabledBorder(),
                          focusedBorder: myFocusBorder(),
                        )),
                    const SizedBox(height: 8),
                    TextFormField(
                        style: const TextStyle(
                          color: Color(0xffFFCB2B),
                        ),
                        onSaved: (val) {
                          Global.password = val!;
                        },
                        validator: (val) {
                          (val!.isEmpty) ? 'Enter your password first' : null;
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Color(0xffFFCB2B),
                          ),
                          labelText: "Password",
                          labelStyle: const TextStyle(
                            fontSize: 16,
                            color: Color(0xffFFCB2B),
                          ),
                          enabledBorder: myEnabledBorder(),
                          focusedBorder: myFocusBorder(),
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ElevatedButton(
                        onPressed: () async {
                          print("-------------------");
                          print("sign up start");
                          print("-------------------");
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            print("-------------------");
                            print("sign up start in if");
                            print("-------------------");
                            User? user = await FirebaseAuthHelper
                                .firebaseAuthHelper
                                .signUpUser(
                                    email: Global.email,
                                    password: Global.password);

                            if (user != null) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content:
                                      Text("Login Successful\nUID:${user.uid}"),
                                  backgroundColor: Colors.green,
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                              Navigator.of(context).pop();
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text("Login Failed"),
                                  backgroundColor: Colors.red,
                                  behavior: SnackBarBehavior.floating,
                                ),
                              );
                            }

                            emailController.clear();
                            passwordController.clear();

                            setState(() {
                              Global.email = "";
                              Global.password = "";
                            });
                          } else {
                            Navigator.of(context).pop();
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12, horizontal: 130),
                            backgroundColor: const Color(0xffFFCB2B),
                            // fixedSize: const Size(300, 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).pushNamed('login');
                    });
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 65,
            ),
            Container(
              height: 160,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.75,
                    child: CustomPaint(
                      size:
                          Size(width, (width * 0.5833333333333334).toDouble()),
                      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter3(),
                    ),
                  ),
                  Opacity(
                    opacity: 1,
                    child: CustomPaint(
                      size: Size(width, (width * 0.58).toDouble()),
                      //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                      painter: RPSCustomPainter2(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
