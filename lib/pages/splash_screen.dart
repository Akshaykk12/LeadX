import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leadx/main.dart';
import 'package:leadx/pages/Home_page.dart';
import 'package:leadx/pages/Login_page.dart';
import 'package:leadx/pages/Personal_Details.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    // Start the timer for 5 seconds
    Timer(const Duration(seconds: 4), () {
      // Navigate to the next screen after the timer is up
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.asset("Assets/Images/BackGround/splashbg.png"),
            Center(
              child: Lottie.asset('Assets/LeadX_Logo.json'),
            ),
          ],
        ),
      ),
    );
  }
}
