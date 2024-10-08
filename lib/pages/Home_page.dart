import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/BottomNavbar.dart';
import 'package:leadx/models/data_model.dart';
import 'package:leadx/pages/category_page.dart';
import 'package:leadx/pages/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.model});

  final DataModel? model;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _SelectedIndex = 0;
  List<Map<String, String>> bankingServicesList = [];

  void navigateBottomBar(int index) {
    setState(() {
      _SelectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavbar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        body: getPage(_SelectedIndex));
  }

  getPage(int index) {
    switch (index) {
      case 0:
        return ResultPage(
          model: widget.model,
          onOutput: (p0) {
            setState(() {
              bankingServicesList = p0;
              print(bankingServicesList);
            });
          },
        );
      case 1:
        return CategoryPage(
          loansList:
              bankingServicesList.where((e) => e['type'] == "Loan").toList(),
          fdsList:
              bankingServicesList.where((e) => e['type'] == "Deposit").toList(),
          mfsList:
              bankingServicesList.where((e) => e['type'] == "Funds").toList(),
          insurancesList: bankingServicesList
              .where((e) => e['type'] == "Insurance")
              .toList(),
          investmentsList: bankingServicesList
              .where((e) => e['type'] == "Investments")
              .toList(),
          policysList:
              bankingServicesList.where((e) => e['type'] == "Policy").toList(),
        );
      default:
        return ResultPage(
          model: widget.model,
          onOutput: (p0) {
            setState(() {
              bankingServicesList = p0;
            });
          },
        );
    }
  }
}
