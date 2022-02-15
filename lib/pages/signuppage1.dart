import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sine/utils/routes.dart';
import 'package:intl/intl.dart';

class SignUpPage1 extends StatefulWidget {
  const SignUpPage1({Key? key}) : super(key: key);

  @override
  _SignUpPage1State createState() => _SignUpPage1State();
}

class _SignUpPage1State extends State<SignUpPage1> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToSignUp2(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.signUp2Route);
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
                const SizedBox(
                  height: 100.0,
                ),
                Text(
                  "Welcome newbie \nPlease Sign In!",
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
                  "Dive into a better version of social media!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.gabriela().fontFamily,
                    fontSize: 22,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Enter Name',
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
                            return "Name cannot be empty";
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
                          hintText: 'Enter Contact Number',
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
                            return "Contact Number cannot be empty";
                          } else if (value!.length < 10) {
                            return "Contact Number length should be atleast 10";
                          }

                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: dateinput,
                        readOnly: true,
                        onTap: () async {
                          final DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101),
                          );
                          if (pickedDate != null) {
                            print(
                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                            String formattedDate =
                                DateFormat('yyyy-MM-dd').format(pickedDate);
                            print(formattedDate);
                            setState(() {
                              dateinput.text =
                                  formattedDate; //set output date to TextField value.
                            });
                          } else {
                            print("Date is not selected");
                          }
                        },
                        //textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          // icon: Icon(Icons.calendar_today),
                          labelStyle: TextStyle(
                            fontFamily: GoogleFonts.dmSans().fontFamily,
                          ),
                          hintText: 'Chose Date of Birth',
                          hintStyle: const TextStyle(color: Colors.grey),
                          suffixIcon: const Icon(Icons.calendar_today),
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
                      ),
                      const SizedBox(
                        height: 20.0,
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
                          onPressed: () => moveToSignUp2(context),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              shadowColor: Colors.transparent),
                          child: Text(
                            'Continue',
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
