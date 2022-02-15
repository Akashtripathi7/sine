import 'package:flutter/material.dart';
import 'dart:math';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  static Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assests/sinelogo.png",
                ),
                radius: 50,
              ),
              const SizedBox(height: 10),
              const Text(
                "Riddhi Kadam",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                "Either find a way or make one",
                style: TextStyle(),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  FlatButton(
                    child: Icon(
                      Icons.message,
                      color: Colors.white,
                    ),
                    color: Colors.grey,
                    onPressed: () {},
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    color: Theme.of(context).accentColor,
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          random.nextInt(10000).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Posts",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          random.nextInt(10000).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Followers",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          random.nextInt(10000).toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Following",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                padding: EdgeInsets.all(5),
                itemCount: 15,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 200 / 200,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Image.asset(
                      "assests/sinelogo.png",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
