import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/UiHelper/Form_util.dart';
import 'package:leadx/models/personal_details_model.dart';
import 'package:leadx/pages/income_details.dart';
import 'package:leadx/utils/text_controllers.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  final _globalkey = GlobalKey<FormState>();
  String? occupation;
  String? maritalStatus;
  String? gender;

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'Assets/Images/BackGround/Background.png',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: Text(
              'LeadX',
              style: heading1(textColor: Colors.white),
            ),
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 18),
                child: Text(
                  'Personal',
                  style: heading2(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                ),
                child: Row(
                  children: [
                    Text(
                      'Details',
                      style: heading3(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff00DDA3)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenheight * 0.05,
              ),
              Expanded(
                child: Container(
                  width: screenwidth,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(35),
                          topLeft: Radius.circular(35))),
                  child: SingleChildScrollView(
                    child: Form(
                      key: _globalkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: screenheight * 0.06,
                          ),
                          textField(
                            Controller: TextControllers.name,
                            labelName: 'Full Name',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter your Name';
                              }
                              // Check if the input contains any digits
                              if (RegExp(r'[0-9]').hasMatch(value)) {
                                return 'Name cannot contain numbers';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenheight * 0.03,
                          ),
                          textField(
                            Controller: TextControllers.age,
                            labelName: 'Age',
                            keyboardType: TextInputType.number,
                            validator: (value){
                              if (value == null || value.isEmpty){
                                return 'Please Enter your Age';
                              }
                              int age = int.tryParse(value) ?? 0;
                              if (age>100){
                                return 'Age must not exceed 100';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenheight * 0.03,
                          ),
                          textField(
                            Controller: TextControllers.aadhar,
                            labelName: 'Aadhaar No.',
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please Enter Your Aadhaar No.';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenheight * 0.03,
                          ),
                          textField(
                            Controller: TextControllers.email,
                            labelName: 'Email ID',
                            validator: (value){
                              if(value==null || value.isEmpty){
                                return 'Please Enter Your Email ID';
                              }
                              String pattern = r'^[a-z0-9._]+@[a-z.]+\.[a-z]{2,}$';
                              RegExp regexp = RegExp(pattern);
                              if(!regexp.hasMatch(value)){
                                return 'Please Enter A Valid Email ID';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: screenheight * 0.03,
                          ),
                          DropDown(
                              labelName: 'Occupation',
                              value: occupation,
                              items: const [
                                'Student',
                                'Job',
                                'Business',
                                'Retired'
                              ],
                              onchanged: (value) {
                                setState(() {
                                  occupation = value;
                                });
                              },
                              validator: (value){
                                if (value == null || value.isEmpty){
                                  return 'Please Select Your Occupation';
                                }
                                return null;
                              },),
                          SizedBox(
                            height: screenheight * 0.03,
                          ),
                          DropDown(
                              labelName: 'Gender',
                              value: gender,
                              items: const ['Male', 'Female', 'Others'],
                              onchanged: (value) {
                                setState(() {
                                  gender = value;
                                });
                              },
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Please Select Your Gender';
                                }
                                return null;
                              },),
                          SizedBox(
                            height: screenheight * 0.03,
                          ),
                          DropDown(
                              labelName: 'Marital Status',
                              value: maritalStatus,
                              items: const ['Single', 'Married', 'Divorced'],
                              onchanged: (value) {
                                setState(() {
                                  maritalStatus = value;
                                });
                              },
                              validator: (value){
                                if(value==null||value.isEmpty){
                                  return 'Please Select Your Marital Status';
                                }
                                return null;
                              },),
                          SizedBox(
                            height: screenheight * 0.01,
                          ),
                          switchTile(
                              value: TextControllers.child,
                              title: 'Do You Have Kids?',
                              onchanged: (bool value) {
                                setState(() {
                                  TextControllers.child = value;
                                });
                              }),
                          switchTile(
                              value: TextControllers.home,
                              title: 'Do You Own A House?',
                              onchanged: (bool value) {
                                setState(() {
                                  TextControllers.home = value;
                                });
                              }),
                          switchTile(
                              value: TextControllers.car,
                              title: 'Do You Own A Car?',
                              onchanged: (bool value) {
                                setState(() {
                                  TextControllers.car = value;
                                });
                              }),
                          SizedBox(
                            height: screenheight * 0.02,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 25, bottom: 25),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  if (_globalkey.currentState!.validate()) {
                                    PersonalDetailsModel personalDetails =
                                        PersonalDetailsModel(
                                            name: TextControllers.name.text,
                                            age: int.parse(TextControllers.age.text),
                                            aadhar: int.parse(TextControllers.aadhar.text),
                                            email: TextControllers.email.text,
                                            occupation: occupation!,
                                            gender: gender!,
                                            maritalStatus: maritalStatus!,
                                            child: TextControllers.child,
                                            home: TextControllers.home,
                                            car: TextControllers.car
                                        );
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => IncomeDetails(
                                                personalDetails:
                                                    personalDetails)));
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                'Please correct the errors')));
                                  }
                                  _globalkey.currentState!.validate();
                                },
                                child: Container(
                                  height: screenheight * 0.05,
                                  width: screenwidth * 0.25,
                                  decoration: BoxDecoration(
                                      color: const Color(0xff00DDA3),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: const Center(
                                      child: Text(
                                    'Next',
                                    style: TextStyle(color: Colors.white),
                                  )),
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
          )),
    );
  }
}
