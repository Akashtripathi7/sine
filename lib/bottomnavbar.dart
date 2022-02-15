import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sine/pages/homepage.dart';

class CurvedNavWidget extends StatefulWidget {
  const CurvedNavWidget({Key? key}) : super(key: key);

  @override
  CurvedNavWidgetState createState() => CurvedNavWidgetState();
}

class CurvedNavWidgetState extends State<CurvedNavWidget> {
  int page = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
