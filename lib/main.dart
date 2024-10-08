import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leadx/pages/Home_page.dart';
import 'package:leadx/pages/Personal_Details.dart';
import 'package:leadx/pages/splash_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
