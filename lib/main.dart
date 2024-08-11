// import 'package:flutter/material.dart';
// import 'package:leadx/pages/Personal_Details.dart';
// import 'package:leadx/pages/income_details.dart';
// import 'package:leadx/pages/result_page.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: PersonalDetails(),
//       routes: {
//         '/personalDetails': (context) => PersonalDetails(),
//         '/incomeDetails': (context) => IncomeDetails(),
//         '/resultPage': (context) => ResultPage()
//       },
//     );
//   }
// }
//


import 'package:flutter/material.dart';
import 'package:leadx/pages/Personal_Details.dart';
import 'package:leadx/pages/income_details.dart';
import 'package:leadx/pages/result_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PersonalDetails(),
      routes: {
        '/personalDetails': (context) => const PersonalDetails(),
        '/resultPage': (context) => const ResultPage(),
      },
      onGenerateRoute: (settings) {
        // Handle dynamic routing here
        if (settings.name == '/incomeDetails') {
          final aid = settings.arguments as int;
          return MaterialPageRoute(
            builder: (context) {
              return IncomeDetails(aid: aid);
            },
          );
        }
        return null;
      },
    );
  }
}
