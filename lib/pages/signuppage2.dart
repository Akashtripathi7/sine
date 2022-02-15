import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sine/utils/routes.dart';

class SignUpPage2 extends StatefulWidget {
  const SignUpPage2({Key? key}) : super(key: key);

  @override
  _SignUpPage2State createState() => _SignUpPage2State();
}

class _SignUpPage2State extends State<SignUpPage2> {
  @override
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
          gradient: LinearGradient(
              colors: [Color(0x50ABDCFF), Color(0xFF0396FF)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  height: MediaQuery.of(context).size.height / 2.5,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Enter User Name',
                          hintStyle: const TextStyle(color: Colors.black),
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
                            return "User Name cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(color: Colors.black),
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
                        height: 25.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Confirm Password',
                          hintStyle: const TextStyle(color: Colors.black),
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
                        width: 200.0,
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
                            'Register',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
