import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class PolicyPage extends StatefulWidget{
  const PolicyPage({super.key});

  @override
  State<PolicyPage> createState() => _PolicyPageState();
}

class _PolicyPageState extends State<PolicyPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LeadX', style: heading1(textColor: const Color(0xff33404F))),
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
      ),
    );
  }
}