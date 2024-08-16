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
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 130, right: 100),
              child: Text('Personal',style: heading2(),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18, ),
              child: Row(
                children: [
                  Text('Details',style: heading3(),),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff00DDA3)
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: screenheight * 0.05,),

            Expanded(
              child: Container(
                width: screenwidth ,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(35), topLeft: Radius.circular(35))
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height:screenheight * 0.06,),

                      textField(Controller: TextControllers.name, labelName: 'Name'),

                      SizedBox(height: screenheight*0.03,),

                      textField(Controller: TextControllers.age, labelName: 'Age',keyboardType: TextInputType.number,),

                      SizedBox(height: screenheight*0.03,),

                      textField(Controller: TextControllers.aadhar, labelName: 'Aadhaar No.',keyboardType: TextInputType.number,),

                      SizedBox(height: screenheight*0.03,),

                      DropDown(labelName: 'Occupation', value: occupation,
                          items: const ['Student', 'Job', 'Business', 'Retired'],
                          onchanged: (value){
                            setState(() {
                              occupation = value;
                            });
                          }
                      ),

                      SizedBox(height: screenheight*0.03,),

                      DropDown(labelName: 'Gender', value: gender,
                          items: const ['Male', 'Female', 'Others'],
                          onchanged: (value){
                            setState(() {
                              gender = value;
                            });
                          }
                      ),

                      SizedBox(height: screenheight*0.03,),

                      DropDown(labelName: 'Marital Status', value: maritalStatus,
                          items: const ['Single', 'Married', 'Divorced'],
                          onchanged: (value){
                            setState(() {
                              maritalStatus = value;
                            });
                          }
                      ),

                      SizedBox(height: screenheight*0.01,),

                      switchTile(value: TextControllers.child, title: 'Do You Have Kids?',
                          onchanged: (bool value){
                            setState(() {
                              TextControllers.child = value;
                            });
                          }),
                      switchTile(value: TextControllers.home, title: 'Do You Own A House?',
                          onchanged: (bool value){
                            setState(() {
                              TextControllers.home = value;
                            });
                          }),
                      switchTile(value: TextControllers.car, title: 'Do You Own A Car?',
                          onchanged: (bool value){
                            setState(() {
                              TextControllers.car = value;
                            });
                          }),
                      SizedBox(height: screenheight * 0.02,),
                      Padding(
                        padding: const EdgeInsets.only(right: 25, bottom: 25),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: GestureDetector(
                            onTap: (){
                              PersonalDetailsModel personalDetails = PersonalDetailsModel(
                                  name: TextControllers.name.text,
                                  age: int.parse(TextControllers.age.text),
                                  aadhar: int.parse(TextControllers.aadhar.text),
                                  occupation: occupation!,
                                  gender: gender!,
                                  maritalStatus: maritalStatus!,
                                  child: TextControllers.child,
                                  home: TextControllers.home,
                                  car: TextControllers.car
                              );
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) => IncomeDetails(personalDetails: personalDetails)
                                ));
                            },
                            child: Container(
                              height: screenheight * 0.05,
                              width: screenwidth * 0.25,
                              decoration: BoxDecoration(
                                  color: const Color(0xff00DDA3),
                                  borderRadius: BorderRadius.circular(17)
                              ),
                              child: const Center(child: Text('Next',style: TextStyle(color: Colors.white),)),
                            ),
                          ),
                        ),
                      )
                    ],
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
