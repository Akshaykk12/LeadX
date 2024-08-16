import 'package:flutter/material.dart';
import 'package:leadx/pages/Home_page.dart';
import 'package:leadx/pages/Login_page.dart';
import 'package:leadx/pages/Personal_Details.dart';
import 'package:leadx/pages/category_page.dart';
import 'package:leadx/pages/income_details.dart';
import 'package:leadx/pages/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PersonalDetails(),
      /* initialRoute: '/personalDetails',
      routes: {
        '/personalDetails': (context) => const PersonalDetails(),
        '/incomeDetails': (context) => const IncomeDetails(),
        '/resultPage': (context) => const ResultPage(),
        '/catPage': (context) => const CategoryPage(),
        '/home_page': (context) => const HomePage()
      }, */
    );
  }
}
