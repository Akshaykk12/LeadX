import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class ResultPage extends StatefulWidget{
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  var  Titles = [
    'Education Loan','Home Loan',
    'Equity Funds', 'Hybrid Funds',
    'Real Estate Investments','Stock Investments',
    'Retirement Policy','Term Policy',
    'Long Term FD','Short Term FD'
  ];

  final List<List<String>> posters = [
    ['Assets/Images/Posters/Loans/education.jpg','Assets/Images/Posters/Loans/home_loan.jpg'],
    ['Assets/Images/Posters/Mutual_funds/equity_funds.jpg','Assets/Images/Posters/Mutual_funds/hybrid.jpg'],
    ['Assets/Images/Posters/Investments/real_estate.jpg','Assets/Images/Posters/Investments/stock.jpg'],
    ['Assets/Images/Posters/Insurance/car_ins.jpg','Assets/Images/Posters/Insurance/health_ins.jpg'],
    ['Assets/Images/Posters/Policies/retirement.jpg','Assets/Images/Posters/Policies/term_policy.jpg'],
    ['Assets/Images/Posters/Fixed_Deposits/long_term.jpg','Assets/Images/Posters/Fixed_Deposits/short_term.jpg'],
  ];

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('LeadX', style: heading1(textColor: const Color(0xff33404F)),),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Stack(
          children: [
            Positioned(
              top: screenheight * 0.1,
              left: screenwidth * 0.04,
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Top Recommendations',style: subHeading()
                    ),

                    const TextSpan(
                      text: '.',style: TextStyle(color: Color(0xff00E7B1),fontWeight: FontWeight.bold,fontSize: 55)
                    )
                  ]
                ),
              ),
            ),

            ListView.separated(
                itemBuilder: (BuildContext  context, int index){
                  return ListTile(
                    leading: SizedBox(
                      height: screenheight * 0.1,
                      width: screenwidth * 0.01,
                      child: Image.asset(
                        posters[index][0],fit: BoxFit.contain, height: 50, width: 50,
                      ),
                    ),
                    title: Text(Titles[index]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.white,
                  height: screenheight * 0.01,
                ),
                itemCount: Titles.length)
          ],
        ),
      )

    );
  }
}