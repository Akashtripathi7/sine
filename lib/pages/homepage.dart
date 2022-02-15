import 'package:flutter/material.dart';
import 'package:sine/bottomnavbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sine/feed/first.dart';
import 'package:sine/feed/second.dart';
import 'package:sine/feed/third.dart';
import 'package:sine/feed/fourth.dart';
import 'package:sine/feed/fifth.dart';
import 'package:sine/feed/sixth.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:sine/pages/convolist.dart';

import 'package:sine/pages/profilepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int page = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xffdbf3fa)
            // gradient: LinearGradient(
            //     colors: [Color(0x50ABDCFF), Color(0xFF0396FF)],
            //     begin: Alignment.topLeft,
            //     end: Alignment.bottomRight),
            ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, top: 5),
                        child: Image.asset(
                          'assests/sinelogo.png',
                          height: 40,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6, left: 60.0),
                        child: Text(
                          'SMUB',
                          style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 30,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ),
                        );
                      },
                      child: Icon(Icons.person, color: Colors.black, size: 30)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ChatPage(),
                        ),
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.only(right: 15, top: 5),
                        child: const Icon(
                          Icons.message_rounded,
                          size: 30,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // Image.asset(
              //   'images/first.png',
              //   height: 300,
              // ),
              // Container(color: Colors.white, height: 120, child: Status()),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Divider(),
              ),
              const SizedBox(
                height: 10,
              ),
              const FirstFeedUI(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              const SizedBox(
                height: 0,
              ),
              const SecondFeedUI(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              const SizedBox(
                height: 10,
              ),
              ThirdFeedUI(),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              const SizedBox(
                height: 10,
              ),
              const FivthFeedUI(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),
              const SizedBox(
                height: 10,
              ),
              FourthFeedUI(),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 18),
                child: Divider(),
              ),

              const SixthFeedUI(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0xffdbf3fa),
        key: bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: const <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.search_outlined, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.notifications_outlined, size: 30),
          Icon(Icons.person, size: 30),
        ],
        // color: Colors.white,

        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) async {
          setState(() {
            page = index;
          });
          if (index == 0) {
            await Future.delayed(const Duration(milliseconds: 300));
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          } else if (index == 1) {
            // await Future.delayed(const Duration(milliseconds: 300));
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const LoginPage()),
            // );
          }
          // ignore: avoid_returning_null_for_void
          return null;
        },
      ),
    );
  }
}


  
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SINE"),
//       ),
//       bottomNavigationBar: CurvedNavWidget(),
//       drawer: const Drawer(),
//     );
//   }
// }
