import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/BottomNavbar.dart';
import 'package:leadx/pages/category_page.dart';
import 'package:leadx/pages/result_page.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _SelectedIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _SelectedIndex = index;
    });
  }

  final List<Widget> _pages =[
    const ResultPage(),
    const CategoryPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_SelectedIndex],
    );
  }
}