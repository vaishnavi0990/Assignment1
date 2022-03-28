import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';

class InviteCodeError extends StatefulWidget {
  const InviteCodeError({Key? key}) : super(key: key);

  @override
  State<InviteCodeError> createState() => _InviteCodeErrorState();
}

class _InviteCodeErrorState extends State<InviteCodeError> {
  final TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: Colors.black,
    body: Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    // const SizedBox(
    //   height: 30,
    //   width: 2,
    // ),
    Container(
    height: 50,
    width: 450,
    child: const Center(
    child: Text(
    'Invalid code please try again',
    style: TextStyle(
    height: 1,
    fontSize: 14.0,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 242, 242, 242),
    letterSpacing: 0.5,
    ),
    ),
    ),
    color: Colors.red,
    ),
    const Text(
    "Continue with invite code",
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

    Padding(
    padding: const EdgeInsets.all(15),
    child: TextField(
      controller: _pass,
    style: const TextStyle(
    color: Colors.white,
    ),
    cursorColor: Colors.white,
    textAlign: TextAlign.center,
    decoration: const InputDecoration(
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide:
    BorderSide(color: Color(0xFF11926C), width: 2),
    ),
    focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Color(0xFF11926C)),
    ),
    hintStyle: TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.white54),
    hintText: 'Add Invite Code',
    ),
    keyboardType: TextInputType.number,
    inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly
    ],
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
      var pin = _pass.text;
      if(pin == "12345"){
        Navigator.pushNamed(context, '/LoginPage');
      }
      else {
        Navigator.pushNamed(context, '/InviteCodeError');
      }
    },
    ),
    ),
    ),

    // const SizedBox(
    //   height: 80,
    //   width: 0.2,
    // ),

    const Text(
    '''No invite code?''',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 18.0,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w500,
    color: Color.fromARGB(255, 242, 242, 242),
    letterSpacing: 1.25,
    ),
    ),
    // const SizedBox(
    //   height: 8,
    //   width: 0.2,
    // ),
    const Text(
    '''If you want an invite code and get early access, please fill out this form''',
    overflow: TextOverflow.visible,
    textAlign: TextAlign.center,
    style: TextStyle(
    height: 1.2,
    fontSize: 15.0,
    fontFamily: 'Poppins',
    color: Color.fromARGB(255, 242, 242, 242),
    letterSpacing: 1,
    ),
    ),

    ],
    )));
    }
    }

//
// class InviteCodeError extends StatelessWidget {
//   const InviteCodeError({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         body: Padding(
//             padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 // const SizedBox(
//                 //   height: 30,
//                 //   width: 2,
//                 // ),
//                 Container(
//                   height: 50,
//                   width: 450,
//                   child: const Center(
//                     child: Text(
//                       'Invalid code please try again',
//                       style: TextStyle(
//                         height: 1,
//                         fontSize: 14.0,
//                         fontFamily: 'Poppins',
//                         fontWeight: FontWeight.w500,
//                         color: Color.fromARGB(255, 242, 242, 242),
//                         letterSpacing: 0.5,
//                       ),
//                     ),
//                   ),
//                   color: Colors.red,
//                 ),
//                 const Text(
//                   "Continue with invite code",
//                   overflow: TextOverflow.visible,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     height: 0.3,
//                     fontSize: 24.0,
//                     color: Color.fromARGB(255, 255, 255, 255),
//                   ),
//                 ),
//
//                 // const SizedBox(
//                 //   height: 1.5,
//                 //   width: 2,
//                 // ),
//
//                 Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: TextField(
//                     style: const TextStyle(
//                       color: Colors.white,
//                     ),
//                     cursorColor: Colors.white,
//                     textAlign: TextAlign.center,
//                     decoration: const InputDecoration(
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         borderSide:
//                         BorderSide(color: Color(0xFF11926C), width: 1),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         borderSide: BorderSide(color: Color(0xFF11926C)),
//                       ),
//                       hintStyle: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white54),
//                       hintText: 'Add Invite Code',
//                     ),
//                     keyboardType: TextInputType.number,
//                     inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly
//                     ],
//                   ),
//                 ),
//
//                 // const SizedBox(
//                 //   height: 45,
//                 //   width: 0.2,
//                 // ),
//
//                 ButtonTheme(
//                   minWidth: 154,
//                   height: 53,
//                   child: Padding(
//                     padding: const EdgeInsets.all(49),
//                     child: RaisedButton(
//                       textColor: Colors.white,
//                       color: const Color(0xFF14C08D),
//                       child: const Text(
//                         'Continue',
//                         style: TextStyle(
//                           fontSize: 28,
//                         ),
//                       ),
//                       onPressed: () {
//                       },
//                     ),
//                   ),
//                 ),
//
//                 // const SizedBox(
//                 //   height: 80,
//                 //   width: 0.2,
//                 // ),
//
//                 const Text(
//                   '''No invite code?''',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 18.0,
//                     fontFamily: 'Poppins',
//                     fontWeight: FontWeight.w500,
//                     color: Color.fromARGB(255, 242, 242, 242),
//                     letterSpacing: 1.25,
//                   ),
//                 ),
//                 // const SizedBox(
//                 //   height: 8,
//                 //   width: 0.2,
//                 // ),
//                 const Text(
//                   '''If you want an invite code and get early access, please fill out this form''',
//                   overflow: TextOverflow.visible,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     height: 1.2,
//                     fontSize: 15.0,
//                     fontFamily: 'Poppins',
//                     color: Color.fromARGB(255, 242, 242, 242),
//                     letterSpacing: 1,
//                   ),
//                 ),
//
//               ],
//             )));
//   }
// }
