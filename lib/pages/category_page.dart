import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class CategoryPage extends StatefulWidget{
  const CategoryPage({super.key});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>{
  @override

  List titles = ['Loans','Mutual Funds','Investments','Fixed Deposits','Insurance','Policies'];

  var logos = [
    'Assets/Images/Logos/loan_logo.png',
    'Assets/Images/Logos/mutual_logo.png',
    'Assets/Images/Logos/invest_logo.png',
    'Assets/Images/Logos/deposit_logo.png',
    'Assets/Images/Logos/ins_logo.png',
    'Assets/Images/Logos/policy_logo.png',
  ];

  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('LeadX',style: heading1(textColor: Color(0xff33404F)),),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Categories', style: subHeading(textColor: Color(0xff33404F)),
                    ),
                    TextSpan(
                      text: '.', style: TextStyle(color: Color(0xff00E7B1), fontWeight: FontWeight.bold, fontSize: 55)
                    )
                  ]
                ),
              ),
            ),

            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0
                  ),
                  itemCount: titles.length,
                  itemBuilder: (context, index){
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(color: Colors.grey.shade300)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
              
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(titles[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: Color(0xff000000)
                              ),
                            ),
                          ),
              
                          SizedBox(height: 5,),
              
                          Expanded(
                            child: Image.asset(
                              logos[index],
                              fit: BoxFit.cover,
                            ),
                          )
              
                        ],
                      ),
                    );
                  }
              ),
            )

          ],
        ),
      )
    );
  }
}

