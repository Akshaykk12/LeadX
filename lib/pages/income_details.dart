import 'package:flutter/material.dart';
import 'package:leadx/models/data_model.dart';
import 'package:leadx/models/personal_details_model.dart';
import 'package:leadx/pages/Home_page.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/UiHelper/Form_util.dart';
import 'package:leadx/utils/text_controllers.dart';

class IncomeDetails extends StatefulWidget {
  const IncomeDetails({super.key, required this.personalDetails});

  final PersonalDetailsModel personalDetails;

  @override
  _IncomeDetailsState createState() => _IncomeDetailsState();
}

class _IncomeDetailsState extends State<IncomeDetails> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
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
            style: heading1(textColor: Colors.white),
          ),
          backgroundColor: Colors.transparent,
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130,left: 18),
              child: Text('Income',style: heading2(),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                children: [
                  Text('Details',style: heading3(),),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          color: Color(0xff00DDA3),
                          shape: BoxShape.circle
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: screenheight * 0.05,),

            Expanded(
              child: Container(
                width: screenwidth,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35))
                ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height:screenheight * 0.06 ,),
                        textField(
                          Controller: TextControllers.income,
                          labelName: 'Monthly Income',
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value == null || value.isEmpty){
                              return 'Please Enter Your Monthly Income';
                            }
                            final regexp = RegExp(r'^[0-9]+$');
                            if(!regexp.hasMatch(value)){
                              return 'Please Enter Valid Monthly Income';
                            }
                          },
                        ),
                        SizedBox(height:screenheight * 0.03 ,),
                        textField(
                          Controller: TextControllers.expenses,
                          labelName: 'Expenses',
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return 'Please Enter Your Expenses';
                            }
                            final regexp = RegExp(r'^[0-9]+$');
                            if(!regexp.hasMatch(value)){
                              return 'Please Enter Valid Expenses';
                            }
                          },
                        ),
                        SizedBox(height: screenheight * 0.03,),
                        textField(
                          Controller: TextControllers.creditScore,
                          labelName: 'Credit Score',
                          keyboardType: TextInputType.number,
                          validator: (value){
                            if(value==null||value.isEmpty){
                              return 'Please Enter Your Credit Score';
                            }
                            double cscore = double.tryParse(value)??0;
                            if(cscore>10.0){
                              return 'Please Enter Your Cred.Score (1.0-10.0)';
                            }
                          },
                        ),
                        SizedBox(height: screenheight * 0.02,),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, bottom: 25),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: (){
                                if(_formKey.currentState!.validate()){
                                  DataModel model = DataModel(
                                      name: widget.personalDetails.name,
                                      age: widget.personalDetails.age,
                                      aadhar: widget.personalDetails.aadhar,
                                      email: widget.personalDetails.email,
                                      occupation: widget.personalDetails.occupation,
                                      gender: widget.personalDetails.gender,
                                      maritalStatus: widget.personalDetails.maritalStatus,
                                      income: int.parse(TextControllers.income.text),
                                      expenses: int.parse(TextControllers.expenses.text),
                                      creditScore: double.parse(TextControllers.creditScore.text),
                                      child: TextControllers.child,
                                      home: TextControllers.home,
                                      car: TextControllers.car
                                  );
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) => HomePage(model: model,))
                                  );
                                }else{
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please Correct The Errors',
                                            style: TextStyle(color: Colors.red),))
                                  );
                                }
                              },
                              child: Container(
                                height: screenheight * 0.05,
                                width: screenwidth * 0.25,
                                decoration:  BoxDecoration(
                                  color: const Color(0xff00DDA3),
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: const Center(
                                  child: Text('Predict',style: TextStyle(color: Colors.white),),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
