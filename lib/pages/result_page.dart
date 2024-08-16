import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/UiHelper/List_tile.dart';
import 'package:leadx/models/data_model.dart';

import 'package:tflite_flutter/tflite_flutter.dart' as tfl;

class ResultPage extends StatefulWidget {
  const ResultPage({super.key, this.model});

  final DataModel? model;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final List<Map<String, String>> posters = [
    {
      "image": "Assets/Images/Posters/Home_Loan.png",
      "title": "Home Loan",
      "subtitle":
          "Find the best home loan solutions with competitive rates and flexible terms."
    },
    {
      "image": "Assets/Images/Posters/Vehicle_Loan.png",
      "title": "Vehicle Loan",
      "subtitle": "Drive your dreams with our affordable vehicle loan options."
    },
    {
      "image": "Assets/Images/Posters/Personal_Loan.png",
      "title": "Personal Loan",
      "subtitle":
          "Get a personal loan for any need with easy approval and quick disbursal."
    },
    {
      "image": "Assets/Images/Posters/Education_Loan.png",
      "title": "Education Loan",
      "subtitle":
          "Explore the possibilities with our hassle-free educational loan solutions. At the lowest interest rates!"
    },
    {
      "image": "Assets/Images/Posters/Equity_Funds.png",
      "title": "Equity Funds",
      "subtitle":
          "Invest in equity funds for high returns and long-term growth."
    },
    {
      "image": "Assets/Images/Posters/Debt_Funds.png",
      "title": "Debt Funds",
      "subtitle":
          "Secure your investment with our stable and low-risk debt fund options."
    },
    {
      "image": "Assets/Images/Posters/Hybrid_Funds.png",
      "title": "Hybrid Funds",
      "subtitle":
          "Enjoy the best of both worlds with our hybrid fund investments."
    },
    {
      "image": "Assets/Images/Posters/Index_Funds.png",
      "title": "Index Funds",
      "subtitle":
          "Diversify your portfolio with our low-cost index fund options."
    },
    {
      "image": "Assets/Images/Posters/Short-term_FD.png",
      "title": "Short-term FD",
      "subtitle": "Grow your savings with our short-term fixed deposit options."
    },
    {
      "image": "Assets/Images/Posters/Long-term_FD.png",
      "title": "Long-term FD",
      "subtitle":
          "Plan for the future with our attractive long-term fixed deposit rates."
    },
    {
      "image": "Assets/Images/Posters/Tax-savings_FD.png",
      "title": "Tax-savings FD",
      "subtitle":
          "Save on taxes while earning interest with our tax-saving fixed deposits."
    },
    {
      "image": "Assets/Images/Posters/Senior_Citizen_FD.png",
      "title": "Senior Citizen FD",
      "subtitle":
          "Secure higher returns with our fixed deposits for senior citizens."
    },
    {
      "image": "Assets/Images/Posters/Health_Insurance.png",
      "title": "Health Insurance",
      "subtitle":
          "Get comprehensive health insurance coverage with easy claim processes."
    },
    {
      "image": "Assets/Images/Posters/Health_Insurance.png",
      "title": "Life Insurance",
      "subtitle":
          "Ensure financial security for your loved ones with our life insurance plans."
    },
    {
      "image": "Assets/Images/Posters/Car_Insurance.png",
      "title": "Car Insurance",
      "subtitle":
          "Protect your vehicle with our comprehensive car insurance policies."
    },
    {
      "image": "Assets/Images/Posters/Home_Insurance.png",
      "title": "Home Insurance",
      "subtitle":
          "Safeguard your home with our extensive home insurance coverage."
    },
    {
      "image": "Assets/Images/Posters/Stocks Investments.png",
      "title": "Stocks Investments",
      "subtitle":
          "Grow your wealth with our expert stock investment strategies."
    },
    {
      "image": "Assets/Images/Posters/Bonds.png",
      "title": "Bonds",
      "subtitle": "Invest in bonds for stable returns and lower risk."
    },
    {
      "image": "Assets/Images/Posters/Real-Estates.png",
      "title": "Real-Estates",
      "subtitle": "Invest in real estate with our guidance and support."
    },
    {
      "image": "Assets/Images/Posters/Commodities.png",
      "title": "Commodities",
      "subtitle":
          "Diversify your investment portfolio with commodities trading."
    },
    {
      "image": "Assets/Images/Posters/Retirement_Policy.png",
      "title": "Retirement Policy",
      "subtitle": "Plan for a secure future with our retirement policies."
    },
    {
      "image": "Assets/Images/Posters/Child_Policy.png",
      "title": "Child Policy",
      "subtitle":
          "Ensure a bright future for your child with our dedicated policies."
    },
    {
      "image": "Assets/Images/Posters/Term_Policy.png",
      "title": "Term Policy",
      "subtitle":
          "Get maximum protection at minimal cost with our term policies."
    },
    {
      "image": "Assets/Images/Posters/Endowment_Policy.png",
      "title": "Endowment Policy",
      "subtitle":
          "Combine insurance with savings through our endowment policies."
    }
  ];

  List<Map<String, String>> postersToDisplay = [];

  List<double> scaleData(List<dynamic> data) {
    List<double> scaledData = [];
    for (int i = 0; i < data.length; i++) {
      double scaledValue = (data[i][0] - mean[i]) / scale[i];
      scaledData.add(scaledValue);
    }

    // Printing the scaled data
    print(scaledData);
    return scaledData;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.model == null) {
      setState(() {
        postersToDisplay = posters;
      });
    } else {
      runModel([
        [widget.model!.age],
        [widget.model!.income],
        [widget.model!.creditScore],
        [getIntResult(widget.model!.occupation == "Business")],
        [getIntResult(widget.model!.occupation == "Job")],
        [getIntResult(widget.model!.occupation == "Retired")],
        [getIntResult(widget.model!.occupation == "Student")],
        [getIntResult(widget.model!.maritalStatus == "Divorced")],
        [getIntResult(widget.model!.maritalStatus == "Married")],
        [getIntResult(widget.model!.maritalStatus == "Single")],
        [getIntResult(widget.model!.gender == "Female")],
        [getIntResult(widget.model!.gender == "Male")],
        [getIntResult(widget.model!.gender == "Others")],
        [0],
        [0],
        [1]
      ]);
    }
  }

  int getIntResult(bool condition) {
    if (condition) {
      return 1;
    } else {
      return 0;
    }
  }

  dynamic result;
  // Mean and scale values from Python's StandardScaler
  List<double> mean = [
    0.00000000e+00,
    2.22044605e-17,
    -3.33066907e-17,
    -3.33066907e-17,
    1.11022302e-17,
    5.55111512e-18,
    -3.33066907e-17,
    -6.66133815e-17,
    0.00000000e+00,
    4.44089210e-17,
    1.66533454e-17,
    -4.44089210e-17,
    6.66133815e-17,
    0.00000000e+00,
    -4.44089210e-17,
    -3.88578059e-17
  ];
  List<double> scale = [
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0,
    1.0
  ];

  runModel(List<dynamic> data) async {
    final interpreter =
        await tfl.Interpreter.fromAsset('Assets/model/model2.tflite');
    print(data);
    final input = data;
    var output = List.filled(24, 0).reshape([1, 24]);
    interpreter.run(input, output);
    result = output;
    print(result);
    Map<String, double> convertedResult = parseRecommendations(result);
    getTopFive(convertedResult);
    setState(() {});
  }

  List<String> target = [
    'Home Loan',
    'Vehicle Loan',
    'Personal Loan',
    'Education Loan',
    'Equity Funds',
    'Debt Funds',
    'Hybrid Funds',
    'Index Funds',
    'Short-term FD',
    'Long-term FD',
    'Tax-savings FD',
    'Senior Citizen FD',
    'Health Insurance',
    'Life Insurance',
    'Car Insurance',
    'Home Insurance',
    'Stocks Investments',
    'Bonds',
    'Real-Estates',
    'Commodities',
    'Retirement Policy',
    'Child Policy',
    'Term Policy',
    'Endowment Policy'
  ];

  Map<String, double> parseRecommendations(
      List<List<dynamic>> predictionsProba) {
    Map<String, double> recommendationsMap = {
      for (int i = 0; i < predictionsProba[0].length; i++)
        target[i]: predictionsProba[0][i]
    };
    return recommendationsMap;
  }

  getTopFive(Map<String, double> data) {
    var sortedEntries = data.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    // Extracting the top 5 entries
    var top5 = sortedEntries.take(5).toList();

    // Printing the top 5 topics
    for (var entry in top5) {
      print('${entry.key}: ${entry.value}');
    }

    var top5Keys = sortedEntries.take(5).map((e) => e.key).toSet();

    // Filter the models to include only those present in top 5 keys
    setState(() {
      postersToDisplay =
          posters.where((model) => top5Keys.contains(model['title'])).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LeadX',
          style: heading1(textColor: const Color(0xff33404F)),
        ),
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              /*  SizedBox(
                height: screenheight * 0.05,
              ), */
              Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('Top Recommendations',
                    style:
                        subHeading(textColor: Color(0xff33404F), textSize: 18)),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0, left: 5),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Color(0xff00E7B1), shape: BoxShape.circle),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: postersToDisplay.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Column(
                      children: [
                        listTile(
                          title: postersToDisplay[index]['title']!,
                          subtitle: postersToDisplay[index]['subtitle']!,
                          imageURl: postersToDisplay[index]['image']!,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
