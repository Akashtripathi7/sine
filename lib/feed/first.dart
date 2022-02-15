import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstFeedUI extends StatelessWidget {
  const FirstFeedUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, top: 10),
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(140),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(140)),
                  height: 58,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          height: 78,
                          width: 74,
                          margin: const EdgeInsets.only(
                              left: 0.0, right: 0, top: 0, bottom: 0),
                          padding: const EdgeInsets.all(0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(140)),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                              'https://instagram.fbom20-2.fna.fbcdn.net/v/t51.2885-19/s150x150/157027872_276141157379247_2231666222571688917_n.jpg?_nc_ht=instagram.fbom20-2.fna.fbcdn.net&_nc_cat=103&_nc_ohc=1_unkbpe9Z4AX-n5Jiv&tn=8TezDZjYMpUcfsWL&edm=ABfd0MgBAAAA&ccb=7-4&oh=00_AT_oeZTXOV_ACI2kNOl87b5GB8GUH4-pe5r_smBMQ5e-Ag&oe=620AD97F&_nc_sid=7bff83',
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 13),
                    child: Text(
                      'Tejashree',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0, top: 13),
                    child: Text(
                      'is now connected',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'to',
                      style: GoogleFonts.lato(
                          color: Colors.grey[700],
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'Dina',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        'and',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.normal),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        '8 others.',
                        style: GoogleFonts.lato(
                            color: Colors.grey[700],
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Image.network(
                'https://static.thenounproject.com/png/658625-200.png',
                height: 30,
              ),
            ),
          ],
        ),
        Container(
          height: 300,
          child: Stack(
            children: [
              Padding(
                  padding:
                      const EdgeInsets.only(top: 48.0, left: 18, right: 18),
                  child: Material(
                    borderRadius: BorderRadius.circular(18.0),
                    elevation: 4,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18.0),
                      child: Image.network(
                          'https://images.pexels.com/photos/4207548/pexels-photo-4207548.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 38.0, top: 18),
                child: Material(
                  elevation: 7,
                  borderRadius: BorderRadius.circular(140),
                  child: Container(
                      height: 64,
                      width: 64,
                      margin: const EdgeInsets.only(
                          left: 0, right: 0, top: 0, bottom: 0),
                      padding: const EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          borderRadius: BorderRadius.circular(140)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://www.readersdigest.ca/wp-content/uploads/2017/08/being-a-good-person.jpg',
                        ),
                      )),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80, bottom: 0.0),
                    child: Center(
                      child: Material(
                        borderRadius: BorderRadius.circular(6),
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 140,
                          width: 300,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 20, left: 20),
                                  child: Text(
                                    'Dina Foster',
                                    style: GoogleFonts.averiaLibre(
                                        color: Colors.grey[900],
                                        fontSize: 18,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 20),
                                  child: Text(
                                    'Technology Consultant at Dropbox',
                                    style: GoogleFonts.lato(
                                        color: Colors.grey[700],
                                        fontSize: 14,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.normal),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 18.0, left: 18),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      color: Colors.black45,
                                      size: 20,
                                    ),
                                    Text(
                                      '   +91 - 9560419114',
                                      style: GoogleFonts.lato(
                                          color: Colors.grey[700],
                                          fontSize: 14,
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.normal),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 18.0, top: 8),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.mail_outline,
                                      color: Colors.black45,
                                      size: 20,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 2.0),
                                      child: Text(
                                        '   phinstudio@gmail.com',
                                        style: GoogleFonts.averageSans(
                                            color: Colors.grey[700],
                                            fontSize: 16,
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.normal),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 153,
                    right: 35, //give the values according to your requirement
                    child: Material(
                        color: Colors.orange,
                        elevation: 10,
                        borderRadius: BorderRadius.circular(100),
                        child: const Padding(
                          padding: EdgeInsets.all(9.0),
                          child: Icon(
                            Icons.favorite,
                            size: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2, left: 28.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Image.asset(
                      'assests/like.png',
                      height: 35,
                    ),
                  ),
                  // Text(
                  //   '45',
                  //   style: GoogleFonts.averageSans(
                  //       color: Colors.grey[700],
                  //       fontSize: 22,
                  //       letterSpacing: 1,
                  //       fontWeight: FontWeight.normal),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22.0, left: 5),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 1.0),
                    child: Image.asset(
                      "assests/comment-png-22705.png",
                      height: 25,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5, bottom: 7),
                    child: Text(
                      '45',
                      style: GoogleFonts.averageSans(
                          color: Colors.grey[700],
                          fontSize: 22,
                          letterSpacing: 1,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
