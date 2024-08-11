import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:leadx/UiHelper/BottomNavbar.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/pages/category_page.dart';

class ResultPage extends StatefulWidget{
  const ResultPage ({super.key});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  final List<Map<String, String>> posters = [
    {"image": 'Assets/Images/Posters/Loans/education.jpg', "title": "Education Loan"},
    {"image": 'Assets/Images/Posters/Loans/home_loan.jpg', "title": "Home Loan"},
    {"image": 'Assets/Images/Posters/Mutual_funds/equity_funds.jpg', "title": "Equity Funds"},
    {"image": 'Assets/Images/Posters/Mutual_funds/hybrid.jpg', "title": "Hybrid Funds"},
    {"image": 'Assets/Images/Posters/Investments/real_estate.jpg', "title": "Real Estate Inv."},
    {"image": 'Assets/Images/Posters/Investments/stock.jpg', "title": "Stock Investments"},
    {"image": 'Assets/Images/Posters/Insurance/car_ins.jpg', "title": "Car Insurance"},
    {"image": 'Assets/Images/Posters/Insurance/health_ins.jpg', "title": "Health Insurance"},
    {"image": 'Assets/Images/Posters/Policies/retirement.jpg', "title": "Retirement Policy"},
    {"image": 'Assets/Images/Posters/Policies/term_policy.jpg', "title": "Term Policy"},
    {"image": 'Assets/Images/Posters/Fixed_Deposits/long_term.jpg', "title": "Long Term FD"},
    {"image": 'Assets/Images/Posters/Fixed_Deposits/short_term.jpg', "title": "Short Term FD"},
  ];

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: AppBar(
        title: Text('LeadX', style: heading1(textColor: const Color(0xff33404F)),),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[

                    TextSpan(
                      text: 'Top Recommendations',
                      style: subHeading(textColor: Color(0xff33404F))
                    ),

                    TextSpan(
                      text: '.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 55,
                        color: Color(0xff00E7B1)
                      )
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
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0
                  ),
                  itemCount: posters.length,
                  itemBuilder: (context, index){
                    return Column(
                      children: [

                        Expanded(
                          child: Image.asset(
                              posters[index]['image']!,
                              fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(height: 5,),

                        Text(posters[index]['title']!,
                        style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)

                      ],
                    );
                  }
              ),
            )

          ],
        ),
      ),
      );
  }
}