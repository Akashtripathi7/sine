import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sine/pages/signuppage1.dart';
import 'package:sine/pages/loginpage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _indexSegmentSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
        decoration: const BoxDecoration(
          color: Color(0x40A7DDF7),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFABDCFF), Color(0xFF0396FF)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(35.0)),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                            "https://cdni.iconscout.com/illustration/premium/thumb/login-3305943-2757111.png",
                            width: MediaQuery.of(context).size.width / 1,
                            height: MediaQuery.of(context).size.height / 3.5),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Text(
                "The New Era\nOf Social Media",
                textAlign: TextAlign.center,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                "Explore the new kind of\nDecentralised and Blockchain\nbased Social Media.",
                textAlign: TextAlign.center,
                textWidthBasis: TextWidthBasis.parent,
                style: TextStyle(
                  fontFamily: GoogleFonts.dmSans().fontFamily,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 25.0),
              Container(
                  padding: const EdgeInsets.all(16),
                  child: buildSegmentedControl()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSegmentedControl() {
    return Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: const Color(0x40A7DDF7),
            borderRadius: BorderRadius.circular(35),
            border: Border.all(
              width: 1,
              color: Colors.white,
            )),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            buildSegmentItem("Register", index: 0),
            buildSegmentItem("Login", index: 1)
          ],
        ));
  }

  Widget buildSegmentItem(String title, {int index = 0}) {
    bool selected = _indexSegmentSelected == index;
    return GestureDetector(
      onTap: () async {
        setState(() {
          _indexSegmentSelected = index;
        });
        if (index == 0) {
          await Future.delayed(const Duration(milliseconds: 300));
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpPage1()),
          );
        } else if (index == 1) {
          await Future.delayed(const Duration(milliseconds: 300));
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        }
        // ignore: avoid_returning_null_for_void
        return null;
      },
      child: Container(
        decoration: selected
            ? BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(35))
            : null,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Text(title,
            style: const TextStyle(fontSize: 20, color: Colors.black)),
      ),
    );
  }
}
