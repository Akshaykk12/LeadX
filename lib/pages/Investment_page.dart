import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class InvestmentPage extends StatefulWidget{
  const InvestmentPage({super.key});

  @override
  State<InvestmentPage> createState() => _InvestmentPageState();
}

class _InvestmentPageState extends State<InvestmentPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LeadX', style: heading1(textColor: Color(0xff33404F))),
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
      ),
    );
  }
}