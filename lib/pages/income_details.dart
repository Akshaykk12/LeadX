import 'package:flutter/material.dart';
import 'package:leadx/models/data_model.dart';
import 'package:leadx/models/personal_details_model.dart';
import 'package:leadx/pages/Home_page.dart';
import 'package:leadx/pages/Personal_Details.dart';
import 'package:leadx/pages/result_page.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/utils/text_controllers.dart';

class IncomeDetails extends StatefulWidget {
  const IncomeDetails({super.key, required this.personalDetails});

  final PersonalDetailsModel personalDetails;

  @override
  _IncomeDetailsState createState() => _IncomeDetailsState();
}

class _IncomeDetailsState extends State<IncomeDetails> {
  String? expenses;

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/Images/BackGround/Background.png'),
              fit: BoxFit.cover)),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Text(
            'Leadx',
            style: heading1(),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            Positioned(
              top: screenheight * 0.15,
              left: screenwidth * 0.04,
              child: Text(
                'Income',
                style: heading2(),
              ),
            ),
            Positioned(
              top: screenheight * 0.22,
              left: screenwidth * 0.04,
              child: RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(text: 'Details', style: heading3()),
                TextSpan(
                    text: '.',
                    style: TextStyle(
                        color: Color(0xff00E7B1),
                        fontWeight: FontWeight.bold,
                        fontSize: 55))
              ])),
            ),
            Positioned(
              top: screenheight * 0.35,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  height: screenheight * 0.7,
                  width: screenwidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40)),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Center(
                    child: Container(
                      width: screenwidth * 0.8,
                      child: Column(
                        children: [
                          SizedBox(
                            height: screenheight * 0.08,
                          ),
                          TextField(
                            controller: TextControllers.income,
                            keyboardType: TextInputType.number,
                            cursorColor: Color(0xff2CB696),
                            decoration: InputDecoration(
                                label: Text('Income'),
                                labelStyle: TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle:
                                    TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: BorderSide(
                                        color: Color(0xff2CB696), width: 1.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: BorderSide(
                                      color: Color(0xff33404F),
                                    ))),
                          ),
                          SizedBox(
                            height: screenheight * 0.02,
                          ),
                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                label: Text('Expenses'),
                                labelStyle: TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle:
                                    TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: BorderSide(
                                        color: Color(0xff2CB696), width: 1.25)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide:
                                        BorderSide(color: Color(0xff33404F)))),
                            value: expenses,
                            items: ['High', 'Mid', 'Low']
                                .map((option) => DropdownMenuItem(
                                      value: option,
                                      child: Text(option),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                expenses = value;
                              });
                            },
                          ),
                          SizedBox(
                            height: screenheight * 0.02,
                          ),
                          TextField(
                            controller: TextControllers.creditScore,
                            keyboardType: TextInputType.number,
                            cursorColor: Color(0xff2CB696),
                            decoration: InputDecoration(
                                label: Text('Credit Score'),
                                labelStyle: TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle:
                                    TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: BorderSide(
                                        color: Color(0xff2CB696), width: 1.25)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide:
                                        BorderSide(color: Color(0xff33404F)))),
                          ),
                          SizedBox(
                            height: screenheight * 0.04,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff00DDA3)),
                                onPressed: () {
                                  DataModel model = DataModel(
                                      name: widget.personalDetails.name,
                                      age: widget.personalDetails.age,
                                      occupation:
                                          widget.personalDetails.occupation,
                                      gender: widget.personalDetails.gender,
                                      maritalStatus:
                                          widget.personalDetails.maritalStatus,
                                      income: int.parse(
                                          TextControllers.income.text),
                                      expenses: expenses!,
                                      creditScore: int.parse(
                                          TextControllers.creditScore.text));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomePage(model: model)));
                                },
                                child: const Text(
                                  'Predict',
                                  style: TextStyle(color: Colors.white),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
