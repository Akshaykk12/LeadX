import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/Form_util.dart';
import 'package:leadx/UiHelper/fontstyle.dart';
import 'package:leadx/pages/Personal_Details.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  TextEditingController pnumber = TextEditingController(text: '6666666666');
  String countryCode = '+91';
  late String verificationid;
  bool otpFieldVisit = false;

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('Assets/Images/BackGround/Background.png'),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('LeadX', style: heading1(textColor: Colors.white),),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 18),
                child: Text('Welcome!',style: heading2(textColor: Colors.white),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Row(
                  children: [
                    Text('Sign In To Continue',style: heading3(textSize: 24),),
                    Padding(
                      padding: const EdgeInsets.only(top: 12, left: 5),
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
              Center(
                child: Container(
                  height: screenheight * 0.5,
                  width: screenwidth * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(height: screenheight * 0.05,),
                      const Text('Verify',style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff33404F)
                      ),),
                      const Text('Yourself',style: TextStyle(
                        color: Color(0xff33404F),
                        fontSize: 20
                      ),),
                      SizedBox(height: screenwidth * 0.04,),
                      textField(Controller: pnumber, labelName: 'Phone Number', width: screenwidth * 0.8,),
                      if(otpFieldVisit) ...[
                        SizedBox(height: screenheight * 0.04,),
                        otpTitle(
                          onCompleted: (pin) async {
                           try{
                             PhoneAuthCredential credential = PhoneAuthProvider.credential(
                                 verificationId: verificationid, smsCode: pin);

                           await FirebaseAuth.instance.signInWithCredential(credential);
                           ScaffoldMessenger.of(context).showSnackBar(
                             const SnackBar(content: Text('OTP Verified Successfully!'))
                           );

                           Navigator.pushAndRemoveUntil(
                               context,
                               MaterialPageRoute(builder: (context)=>const PersonalDetails()), 
                               (route)=>false);
                          }catch(e){
                             ScaffoldMessenger.of(context).showSnackBar(
                                 SnackBar(content: Text('Failed to Verify OTP:$e')));
                           }
                          }
                        ),
                      ],
                      SizedBox(height: screenheight * 0.04,),
                      GestureDetector(
                        onTap: () async {
                          if (!otpFieldVisit){
                            await FirebaseAuth.instance.verifyPhoneNumber(
                                phoneNumber:  countryCode+pnumber.text,
                                verificationCompleted: (PhoneAuthCredential credential){},
                                verificationFailed: (FirebaseAuthException ex){
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Verification Failed: ${ex.message}'))
                                  );
                                },
                                codeSent: (String verId, int? resendToken){
                                  setState(() {
                                    verificationid = verId;
                                    otpFieldVisit = true;
                                  });
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('OTP Sent!'))
                                  );
                                },
                                codeAutoRetrievalTimeout: (String verId){
                                  verificationid = verId;
                                });
                          }

                        },
                        child: Container(
                          height: screenheight * 0.05,
                          width: screenwidth * 0.5,
                          decoration:  BoxDecoration(
                            color: const Color(0xff00DDA3),
                            borderRadius: BorderRadius.circular(17)
                          ),
                          child: Center(
                            child:  Text( otpFieldVisit ? 'Verify OTP':'Generate OTP',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}