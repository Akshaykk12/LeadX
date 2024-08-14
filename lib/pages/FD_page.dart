import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class FdPage extends StatefulWidget{
  const FdPage({super.key});

  @override
  State<FdPage> createState() => _FdPageState();
}

class _FdPageState extends State<FdPage>{
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