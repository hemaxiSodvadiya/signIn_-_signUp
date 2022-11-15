import 'dart:async';

import 'package:flutter/material.dart';

import 'home_pages.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

//Color(0xffF5820D),
class _SplashScreenState extends State<SplashScreen> {
  bool _isVisible = false;

  _SplashScreenState() {
    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const HomePages()),
            (route) => false);
      });
    });

    Timer(const Duration(seconds: 1), () {
      setState(() {
        _isVisible =
            true; // Now it is showing fade effect and navigating to Login page
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xffFFCB2B),
          Color(0xffF5820D),
        ],
        begin: FractionalOffset(0, 0),
        end: FractionalOffset(1.0, 0.0),
        stops: [0.0, 1.0],
        tileMode: TileMode.clamp,
      )),
      child: AnimatedOpacity(
        opacity: 1,
        duration: const Duration(milliseconds: 1200),
        child: Center(
          child: Container(
            height: 140,
            width: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 2,
                    offset: const Offset(5.0, 3.0),
                    spreadRadius: 2),
              ],
            ),
            child: ClipOval(
              child: FlutterLogo(
                size: 128,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
