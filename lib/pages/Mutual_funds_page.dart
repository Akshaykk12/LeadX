import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class MutualFundsPage extends StatefulWidget{
  const MutualFundsPage({super.key});

  @override
  State<MutualFundsPage> createState() => _MutualFundsPageState();
}

class _MutualFundsPageState extends State<MutualFundsPage>{
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