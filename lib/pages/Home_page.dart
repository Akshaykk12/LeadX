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
        return ResultPage(model: widget.model);
      case 1:
        return CategoryPage();
      default:
        return ResultPage(model: widget.model);
    }
  }
}
