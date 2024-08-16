import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class CategoryPage extends StatefulWidget{
  const CategoryPage({super.key});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>{

  var logos = [
    'Assets/Images/Logos/loan_logo.png',
    'Assets/Images/Logos/mutual_logo.png',
    'Assets/Images/Logos/invest_logo.png',
    'Assets/Images/Logos/deposit_logo.png',
    'Assets/Images/Logos/ins_logo.png',
    'Assets/Images/Logos/policy_logo.png',
  ];

  @override

  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('LeadX',style: heading1(textColor: const Color(0xff33404F)),),
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 18,bottom: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: screenwidth * 0.05,),
                  Text('Categories', style: subHeading(
                    textSize: 18,
                    textColor: Color(0xff33404F)
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0,left: 5),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Color(0xff00E7B1),
                        shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              )
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0,bottom: 15.0),
                    child: Container(
                      height: screenheight * 0.25,
                      width: screenwidth * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            spreadRadius: 6,
                            blurRadius: 7.5
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(logos[0]),fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0,top: 20.0,bottom: 15.0),
                    child: Container(
                      height: screenheight * 0.19,
                      width: screenwidth * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            spreadRadius: 6,
                            blurRadius: 7.5
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(logos[1]),fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0,top: 15.0),
                    child: Container(
                      height: screenheight * 0.19,
                      width: screenwidth * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            spreadRadius: 6,
                            blurRadius: 7.5
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(logos[2]),fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0,bottom: 15.0,top: 15.0),
                    child: Container(
                      height: screenheight * 0.19,
                      width: screenwidth * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.19),
                            spreadRadius: 6,
                            blurRadius: 7.5
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(logos[3]),fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
                    child: Container(
                      height: screenheight * 0.25,
                      width: screenwidth * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            spreadRadius: 6,
                            blurRadius: 7.5
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(logos[4]),fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15.0,bottom: 15.0),
                    child: Container(
                      height: screenheight * 0.18,
                      width: screenwidth * 0.38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.18),
                            spreadRadius: 6,
                            blurRadius: 7.5
                          )
                        ],
                        image: DecorationImage(
                          image: AssetImage(logos[5]),fit: BoxFit.cover
                        )
                      ),
                    ),
                  ),
                ],
              )
            ],
          )

          ],
        ),
      )
    );
  }
}

