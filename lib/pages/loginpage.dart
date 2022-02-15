import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sine/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0x80A7DDF7),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 100),
                Text(
                  "Hello again! \n$name ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.dmSans().fontFamily,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Welcome back\nyou've been missed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.gabriela().fontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      // Container(
                      TextFormField(
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Enter Username',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Username cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // Container(
                      TextFormField(
                        obscureText: true,
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Enter Password',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide:
                                BorderSide(color: Colors.white, width: 2),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        validator: (value) {
                          if (value != null && value.isEmpty) {
                            return "Password cannot be empty";
                          } else if (value!.length < 6) {
                            return "Password length should be atleast 6";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 140.0,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFFEE9AE5), Color(0xFF5961F9)]),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () => moveToHome(context),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: GoogleFonts.dmSans().fontFamily,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
