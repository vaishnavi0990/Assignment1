import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 66, 18, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // const SizedBox(
                  //   height: 30,
                  //   width: 2,
                  // ),
                  const Text(
                    "Please provide your number",
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 0.3,
                      fontSize: 24.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),

                  // const SizedBox(
                  //   height: 1.5,
                  //   width: 2,
                  // ),

                  // Container(
                  //   width: 340.0,
                  //   height: 60.0,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     border: Border.all(
                  //       width: 2.0,
                  //       color: const Color.fromARGB(255, 20, 192, 141),
                  //     ),
                  //   ),
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     child: Container(
                  //       color: const Color.fromARGB(255, 0, 0, 0),
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: TextField(
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                      cursorColor: Colors.white,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                          BorderSide(color: Color(0xFF11926C), width: 2.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Color(0xFF11926C)),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white54),
                        hintText: '+91   99513054588',
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly
                      ],
                    ),
                  ),

                  const Text(
                    '''We will send an OTP to verify this number''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.3333333333333333,
                      fontSize: 18.0,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 79, 79, 79),

                       letterSpacing: 1.25,
                    ),
                  ),

                  // const SizedBox(
                  //   height: 45,
                  //   width: 0.2,
                  // ),

                  ButtonTheme(
                    minWidth: 154,
                    height: 53,
                    child: Padding(
                      padding: const EdgeInsets.all(49),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: const Color(0xFF14C08D),
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                            fontSize: 28,
                          ),
                        ),
                        onPressed: () {
                        },
                      ),
                    ),
                  ),

                  const Text(
                    '''Or''',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.3333333333333333,
                      fontSize: 18.0,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 130, 130, 130),

                       letterSpacing: 1.25,
                    ),
                  ),


                  Positioned(
                    left: 36.0,
                    top: 640.0,
                    right: null,
                    bottom: null,
                    width: 340.0,
                    height: 60.0,
                    child: Container(
                      width: 340.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(
                          width: 2.0,
                          color: const Color.fromARGB(255, 20, 192, 141),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const <Widget>[
                              Icon(Icons.album_rounded, color: Colors.white,),
                              Text(
                              '''Continue with Google''',
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                height: 1,
                                fontSize: 18.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                color: Color.fromARGB(255, 224, 224, 224),
                                /* letterSpacing: 1.25, */
                              ),
                            ),
                          ],
                          ),
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
              ]),
        )));
  }
}
