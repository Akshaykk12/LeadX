import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';


class LoanPage extends StatefulWidget{
  const LoanPage({super.key});

  @override
  State<LoanPage> createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage>{

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('LeadX',style:heading1(textColor: const Color(0xff33404F)),),
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
      ),
      body: Container(
        height: screenheight,
        width: screenwidth,
        decoration: const BoxDecoration(color: Colors.white,),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[

                  TextSpan(
                    text: 'Loans',style: subHeading(textColor: Colors.black)
                  ),

                  const TextSpan(
                    text: '.', style: TextStyle(fontSize: 55, color: Color(0xff00E7B1),fontWeight: FontWeight.bold)
                  )

                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}