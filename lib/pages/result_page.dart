import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/UiHelper/List_tile.dart';

class ResultPage extends StatefulWidget{
  const ResultPage ({super.key});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  final List<Map<String, String>> posters = [
    {
      "image": 'Assets/Images/Posters/Loans/education.jpg',
      "title": "Education Loan",
      "subtitle": "Explore the possibilities with our"
          "\nhassle-free educational loan"
          "\nsolutions. At the lowest"
          "\ninterest rates!"
    },

    {
      "image": 'Assets/Images/Posters/Loans/home_loan.jpg',
      "title": "Home Loan",
      "subtitle": "Explore the possibilities with our"
          "\nhassle-free home loan solutions."
          "\nYour dream home awaits!"
    },
    
    {
      "image": 'Assets/Images/Posters/Mutual_funds/equity_funds.jpg',
      "title": "Equity Funds",
      "subtitle": "Unlock Growth Potential: Invest"
          "\nin Equity Funds for a Brighter"
          "\nFinancial Future!"
    },

    {
      "image": 'Assets/Images/Posters/Mutual_funds/hybrid.jpg',
      "title": "Hybrid Funds",
      "subtitle": "Blend the Best of Both Worlds:"
          "\nInvest in Hybrid Funds for"
          "\nBalanced Growth and"
          "\nStability!"
    },

    {
      "image": 'Assets/Images/Posters/Investments/real_estate.jpg',
      "title": "Real Estate Inv.",
      "subtitle": "Transform Your Portfolio: Invest"
          "\nin Real Estate Today for High"
          "\nReturns, Steady Income, and"
          "\nExclusive Offers!"
    },

    {
      "image": 'Assets/Images/Posters/Investments/stock.jpg',
      "title": "Stock Investments",
      "subtitle": "Unlock Your Financial Future: "
          "\nStart Investing in Stocks Today "
          "\nfor Long-Term Growth and "
          "\nProsperity!"
    },

    {
      "image": 'Assets/Images/Posters/Insurance/car_ins.jpg',
      "title": "Car Insurance",
      "subtitle": "Drive with Confidence: Secure "
          "\nYour Journey with Reliable Car "
          "\nInsurance Today!"
    },

    {
      "image": 'Assets/Images/Posters/Insurance/health_ins.jpg',
      "title": "Health Insurance",
      "subtitle": "Protect Your Well-Being: Get "
          "\nHealth Insurance for Peace of"
          "\nMind Today!"
    },

    {
      "image": 'Assets/Images/Posters/Policies/retirement.jpg',
      "title": "Retirement Policy",
      "subtitle": "Build Your Future: Choose Our "
          "\nRetirement Policy for a "
          "\nComfortable and Worry-Free "
          "\nRetirement"
    },

    {
      "image": 'Assets/Images/Posters/Policies/term_policy.jpg',
      "title": "Term Policy",
      "subtitle": "Build Your Future: Choose Our "
          "\nRetirement Policy for a "
          "\nComfortable and Worry-Free "
          "\nRetirement"
    },

    {
      "image": 'Assets/Images/Posters/Fixed_Deposits/long_term.jpg',
      "title": "Long Term FD",
      "subtitle": "Secure Your Future Today: "
          "\nInvest in Long Term "
          "\nFixed Deposits for Guaranteed "
          "\nGrowth and Peace of Mind!"
    },

    {"image": 'Assets/Images/Posters/Fixed_Deposits/short_term.jpg',
      "title": "Short Term FD",
      "subtitle": "Boost Your Savings Fast: Invest "
          "\nin Short-Term Fixed Deposits "
          "\nToday!"
    },
  ];

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(

      appBar: AppBar(
        title: Text('LeadX', style: heading1(textColor: const Color(0xff33404F)),),
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenheight,
          width: screenheight,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 0,left: 18,bottom: 10.0),
                child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: screenheight * 0.05,),
                    Text(
                        'Top Recommendations',
                        style: subHeading(
                          textColor: Color(0xff33404F),
                          textSize: 18
                        )
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom:10.0, left: 5),
                      child: Container(
                        height: 10,width: 10
                        ,decoration: const BoxDecoration(color: Color(0xff00E7B1), shape: BoxShape.circle),
                      ),
                    )
                  ],
                ),
              ),
        
              Expanded(
                child: ListView.builder(
                  itemCount: posters.length,
                  itemBuilder:(BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(
                        children: [
                          listTile(
                            title: posters[index]['title']!,
                            subtitle: posters[index]['subtitle']!,
                            imageURl: posters[index]['image']!,
                          ),
                        ],
                      ),
                    );
                  }
                ),
              )
        
            ],
          ),
        ),
      ),
      );
  }
}