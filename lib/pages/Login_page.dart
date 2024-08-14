import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadx/UiHelper/fontstyle.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {

    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
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
        body: Stack(
          children: [
          Positioned(
          top: screenheight * 0.15,
          left: screenwidth * 0.04,
          child: Text('Login',style: heading2(),),
        ),

          Positioned(
            top: screenheight * 0.22,
            left: screenwidth * 0.04,
            child: RichText(
                text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Credentials',style: heading3()
                      ),

                      TextSpan(
                          text: '.',style: TextStyle(color: Color(0xff00E7B1),fontWeight: FontWeight.bold,fontSize: 55)
                      )
                    ]
                )
            ),
          ),

            Positioned(
              top: screenheight * 0.35,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: screenheight * 0.7,
                  width: screenwidth * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                  ),
                  child: Center(
                    child: SizedBox(
                      width: screenwidth * 0.8,
                      child: Column(
                        children: [

                          SizedBox(height: screenheight * 0.04,),

                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Welcome',
                              style: TextStyle(
                                color: Color(0xff33404F,),
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),),

                              Text('!',
                              style: TextStyle(
                                color: Color(0xff2CB696),
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                          ),

                          const Text('Sign In To Continue',
                          style: TextStyle(
                            color: Color(0xff33404F),
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                          ),),

                          SizedBox(height: screenheight * 0.04,),

                          TextField(
                            controller: email,
                            keyboardType: TextInputType.text,
                            cursorColor: const Color(0xff2CB696),
                            decoration: InputDecoration(
                                label: const Text('Email'),
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

                          SizedBox(height: screenheight * 0.04,),

                          Container(
                            height: 50,
                            width: screenwidth * 0.6,
                            decoration: BoxDecoration(
                              color: Color(0xff2CB696),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            child: Center(
                              child: Text('Generate OTP',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ]
        ),
      )
    );
  }
}