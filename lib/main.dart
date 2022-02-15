import "package:flutter/material.dart";
import 'package:sine/pages/landingpage.dart';
import 'package:sine/pages/loginpage.dart';
import 'package:sine/pages/signuppage2.dart';
import 'package:sine/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LandingPage(),
        "/homepage": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/signup2": (context) => SignUpPage2(),
      },
    );
  }
}
