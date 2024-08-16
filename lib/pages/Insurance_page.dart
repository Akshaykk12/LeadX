import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class InsurancePage extends StatefulWidget{
  const InsurancePage({super.key});

  @override
  State<StatefulWidget> createState() => _InsurancePageState();
}

class _InsurancePageState extends State<InsurancePage>{
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