// import 'package:flutter/material.dart';
// import 'package:leadx/UiHelper/fontstyle.dart';
// import 'package:leadx/pages/income_details.dart';
//
// class PersonalDetails extends StatefulWidget{
//   const PersonalDetails({super.key});
//
//   @override
//   _PersonalDetailsState createState() => _PersonalDetailsState();
// }
//
// class _PersonalDetailsState extends State<PersonalDetails> {
//
//   TextEditingController name = TextEditingController();
//   TextEditingController age = TextEditingController();
//   var occupation;
//   var marital_status;
//   var gender;
//
//   @override
//
//   Widget build(BuildContext context) {
//
//     double screenheight = MediaQuery.of(context).size.height;
//     double screenwidth = MediaQuery.of(context).size.width;
//
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('Assets/Images/BackGround/Background.png',),
//           fit: BoxFit.cover
//         )
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         extendBodyBehindAppBar: true,
//         appBar: AppBar(
//           title: Text('LeadX',style: heading1(),),
//           automaticallyImplyLeading: false,
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//         ),
//
//         body: Stack(
//           children: [
//             Positioned(
//               top: screenheight * 0.15,
//               left: screenwidth * 0.04,
//               child: Text('Personal',style: heading2(),),
//             ),
//
//             Positioned(
//               top: screenheight * 0.22,
//               left: screenwidth * 0.04,
//               child: RichText(
//                   text: TextSpan(
//                       children: <TextSpan>[
//                         TextSpan(
//                             text: 'Details',style: heading3()
//                         ),
//
//                         TextSpan(
//                             text: '.',style: TextStyle(color: Color(0xff00E7B1),fontWeight: FontWeight.bold,fontSize: 55)
//                         )
//                       ]
//                   )
//               ),
//             ),
//
//             Positioned(
//               top: screenheight * 0.35,
//               child: FittedBox(
//                 fit: BoxFit.cover,
//                 child: Container(
//                   height: screenheight * 0.7,
//                   width: screenwidth ,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
//                     color: Color(0xffFFFFFF),
//                   ),
//                   child: Center(
//                     child: Container(
//                       width: screenwidth * 0.8,
//                       child: Column(
//                         children: [
//                           SizedBox(height: screenheight * 0.08,),
//
//                           TextField(
//                             controller: name,
//                             keyboardType: TextInputType.text,
//                             cursorColor: Color(0xff2CB696),
//                             decoration: InputDecoration(
//                                 label: Text('Name'),
//                                 labelStyle: TextStyle(color: Color(0xff33404F)),
//                                 floatingLabelStyle: TextStyle(color: Color(0xff2CB696)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff2CB696),
//                                         width: 1.5
//                                     )
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                       color: Color(0xff33404F),
//                                     )
//                                 )
//                             ),
//
//                           ),
//
//                           SizedBox(height: screenheight * 0.02,),
//
//                           TextField(
//                             controller: age,
//                             keyboardType: TextInputType.number,
//                             cursorColor: Color(0xff2CB696),
//                             decoration: InputDecoration(
//                                 label: Text('Age'),
//                                 labelStyle: TextStyle(color: Color(0xff33404F)),
//                                 floatingLabelStyle: TextStyle(color: Color(0xff2CB696)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff2CB696),
//                                         width: 1.5
//                                     )
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff33404F)
//                                     )
//                                 )
//                             ),
//                           ),
//
//                           SizedBox(height: screenheight * 0.02,),
//
//                           DropdownButtonFormField(
//                             decoration: InputDecoration(
//                                 label: Text('Occupation'),
//                                 labelStyle: TextStyle(color: Color(0xff33404F)),
//                                 floatingLabelStyle: TextStyle(color: Color(0xff2CB696)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff2CB696),
//                                         width: 1.25
//                                     )
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff33404F)
//                                     )
//                                 )
//                             ),
//                             value: occupation,
//                             items: ['Student', 'Job', 'Business', 'Retired'].map(
//                                     (option)=>DropdownMenuItem(
//                                   value: option,
//                                   child: Text(option),
//                                 )
//                             )
//                                 .toList(),
//                             onChanged: (value){
//                               setState(() {
//                                 occupation = value;
//                               });
//                             },
//                           ),
//
//                           SizedBox(height: screenheight * 0.02,),
//
//                           DropdownButtonFormField(
//                             decoration: InputDecoration(
//                                 label: Text('Gender'),
//                                 labelStyle: TextStyle(color: Color(0xff33404F)),
//                                 floatingLabelStyle: TextStyle(color: Color(0xff2CB696)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff2CB696),
//                                         width: 1.25
//                                     )
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff33404F)
//                                     )
//                                 )
//                             ),
//                             value: gender,
//                             items: ['Male','Female','Others'].map(
//                                     (option)=>DropdownMenuItem(
//                                   value: option,
//                                   child: Text(option),
//                                 )
//                             ).toList(),
//                             onChanged: (value){
//                               setState(() {
//                                 gender = value;
//                               });
//                             },
//                           ),
//
//                           SizedBox(height: screenheight * 0.02,),
//
//                           DropdownButtonFormField(
//                             decoration: InputDecoration(
//                                 labelStyle: TextStyle(color: Color(0xff33404F)),
//                                 floatingLabelStyle: TextStyle(color: Color(0xff2CB696)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff2CB696),
//                                         width: 1.5
//                                     )
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(23),
//                                     borderSide: BorderSide(
//                                         color: Color(0xff33404F)
//                                     )
//                                 ),
//                                 label: Text('Marital Status')
//                             ),
//                             value: marital_status,
//                             items: ['Single', 'Married', 'Divorced'].map(
//                                     (option) => DropdownMenuItem(
//                                   value: option,
//                                   child: Text(option),
//                                 )
//                             ).toList(),
//                             onChanged: (value){
//                               setState(() {
//                                 marital_status = value;
//                               });
//                             },
//                           ),
//
//                           SizedBox(height: screenheight * 0.04,),
//
//                           Align(
//                             alignment: Alignment.bottomRight,
//                             child: ElevatedButton(
//                                 style: ElevatedButton.styleFrom(
//                                     backgroundColor: Color(0xff00DDA3)
//                                 ),
//                                 onPressed: (){
//                                   Navigator.pushNamed(
//                                       context,
//                                     '/incomeDetails'
//                                       );
//                                 },
//                                 child: Text('Next >',style: TextStyle(color: Colors.white),)
//                             ),
//                           )
//
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:http/http.dart' as http;
import 'income_details.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  TextEditingController name = TextEditingController();
  TextEditingController age = TextEditingController();
  var occupation;
  var marital_status;
  var gender;

  submitDetails() async {
    Map<String, String> data = {
      'name': name.text,
      'age': age.text,
      'gender': gender,
      'occupation': occupation,
      'marital_status': marital_status,
    };

    print(data);

    // Send data to server and retrieve aid
    final response = await http.post(
      Uri.parse('http://192.168.0.105/Banking/save_users_details.php'),
      body: data,
    );
    if (response.statusCode == 200) {
      // Parse response and handle any potential errors
      try {
        final responseData = jsonDecode(response.body);
        if (responseData['status'] == 'success') {
          int aid = responseData['aid'];
          print(
              'Successfully retrieved aid: $aid');

          // Navigate to IncomeDetails and pass the aid
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  IncomeDetails(aid: aid),
            ),
          );
        } else {
          print(
              'Failed to save personal details: ${responseData['message']}');
        }
      } catch (e) {
        print('Failed to parse aid: $e');
        // Optionally, you can show a dialog or snackbar to inform the user
        ScaffoldMessenger.of(context)
            .showSnackBar(
          const SnackBar(content: Text(
              'Failed to retrieve aid. Please try again.')),
        );
      }
    } else {
      print('Failed to submit personal details');
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Assets/Images/BackGround/Background.png',),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text('LeadX',style: heading1(),),
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),

        body: Stack(
          children: [
            Positioned(
              top: screenheight * 0.15,
              left: screenwidth * 0.04,
              child: Text('Personal',style: heading2(),),
            ),

            Positioned(
              top: screenheight * 0.22,
              left: screenwidth * 0.04,
              child: RichText(
                  text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Details',style: heading3()
                        ),

                        const TextSpan(
                            text: '.',style: TextStyle(color: Color(0xff00E7B1),fontWeight: FontWeight.bold,fontSize: 55)
                        )
                      ]
                  )
              ),
            ),

            Positioned(
              top: screenheight * 0.35,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Container(
                  height: screenheight * 0.7,
                  width: screenwidth ,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                    color: Color(0xffFFFFFF),
                  ),
                  child: Center(
                    child: SizedBox(
                      width: screenwidth * 0.8,
                      child: Column(
                        children: [
                          SizedBox(height: screenheight * 0.08,),

                          TextField(
                            controller: name,
                            keyboardType: TextInputType.text,
                            cursorColor: const Color(0xff2CB696),
                            decoration: InputDecoration(
                                label: const Text('Name'),
                                labelStyle: const TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff2CB696),
                                        width: 1.5
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                      color: Color(0xff33404F),
                                    )
                                )
                            ),

                          ),

                          SizedBox(height: screenheight * 0.02,),

                          TextField(
                            controller: age,
                            keyboardType: TextInputType.number,
                            cursorColor: const Color(0xff2CB696),
                            decoration: InputDecoration(
                                label: const Text('Age'),
                                labelStyle: const TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff2CB696),
                                        width: 1.5
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff33404F)
                                    )
                                )
                            ),
                          ),

                          SizedBox(height: screenheight * 0.02,),

                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                label: const Text('Occupation'),
                                labelStyle: const TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff2CB696),
                                        width: 1.25
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff33404F)
                                    )
                                )
                            ),
                            value: occupation,
                            items: ['Student', 'Job', 'Business', 'Retired'].map(
                                    (option)=>DropdownMenuItem(
                                  value: option,
                                  child: Text(option),
                                )
                            )
                                .toList(),
                            onChanged: (value){
                              setState(() {
                                occupation = value;
                              });
                            },
                          ),

                          SizedBox(height: screenheight * 0.02,),

                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                label: const Text('Gender'),
                                labelStyle: const TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff2CB696),
                                        width: 1.25
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff33404F)
                                    )
                                )
                            ),
                            value: gender,
                            items: ['Male','Female','Others'].map(
                                    (option)=>DropdownMenuItem(
                                  value: option,
                                  child: Text(option),
                                )
                            ).toList(),
                            onChanged: (value){
                              setState(() {
                                gender = value;
                              });
                            },
                          ),

                          SizedBox(height: screenheight * 0.02,),

                          DropdownButtonFormField(
                            decoration: InputDecoration(
                                labelStyle: const TextStyle(color: Color(0xff33404F)),
                                floatingLabelStyle: const TextStyle(color: Color(0xff2CB696)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff2CB696),
                                        width: 1.5
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(23),
                                    borderSide: const BorderSide(
                                        color: Color(0xff33404F)
                                    )
                                ),
                                label: const Text('Marital Status')
                            ),
                            value: marital_status,
                            items: ['Single', 'Married', 'Divorced'].map(
                                    (option) => DropdownMenuItem(
                                  value: option,
                                  child: Text(option),
                                )
                            ).toList(),
                            onChanged: (value){
                              setState(() {
                                marital_status = value;
                              });
                            },
                          ),

                          SizedBox(height: screenheight * 0.04,),

                          Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xff00DDA3)
                                ),
                                onPressed: () async {
                                  submitDetails();
                                },
                                child: const Text('Next >', style: TextStyle(color: Colors.white),)
                            ),
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
