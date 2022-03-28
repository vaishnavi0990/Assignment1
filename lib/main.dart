import 'package:flutter/material.dart';
import 'invitecode.dart';
import 'loginpage.dart';
import 'invitecodeerror.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/Home',
    routes: {
      '/Home': (context) => const Home(),
      '/InviteCodeError': (context) => const InviteCodeError(),
      '/LoginPage': (context) => const LoginPage(),
    },
  ));
}

