import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_with_email_and_password_miner/screens/dashbord.dart';
import 'package:login_with_email_and_password_miner/screens/home_pages.dart';
import 'package:login_with_email_and_password_miner/screens/sign_Up.dart';
import 'package:login_with_email_and_password_miner/screens/login.dart';
import 'package:login_with_email_and_password_miner/screens/splash_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_Screen',
      routes: {
        'splash_Screen': (context) => const SplashScreen(),
        'dashboard': (context) => const DashBord(),
        'home_page': (context) => const HomePages(),
        'login': (context) => const Login(),
        'sign_Up': (context) => const SignUp(),
      },
    ),
  );
}
