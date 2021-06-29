import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui05_yoga_diet/color_pallete.dart';
import 'package:ui05_yoga_diet/widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool menuOpen = false;
  double menuOpacity = 0;
  double xCoordHome = 0;
  double yCoordHome = 0;
  double scaleHome = 1;
  double zRotateHome = 0;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kPurple,
      resizeToAvoidBottomInset: false,
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        child: Stack(
          children: [
            AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: menuOpacity,
                child: Menu()),
            AnimatedContainer(
              transform: Matrix4.translationValues(
                  menuOpen == false ? xCoordHome : xCoordHome - 50,
                  menuOpen == false ? yCoordHome : deviceHeight * 0.15,
                  0)
                ..scale(menuOpen == false ? scaleHome : 0.7)
                ..rotateZ(zRotateHome),
              duration: Duration(milliseconds: 300),
              width: deviceWidth,
              height: deviceHeight,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: menuOpen == false
                    ? BorderRadius.zero
                    : BorderRadius.circular(25),
              ),
            ),
            AnimatedContainer(
              transform: Matrix4.translationValues(
                  menuOpen == false ? xCoordHome : xCoordHome - 25,
                  menuOpen == false ? yCoordHome : deviceHeight * 0.125,
                  0)
                ..scale(menuOpen == false ? scaleHome : 0.75)
                ..rotateZ(zRotateHome),
              duration: Duration(milliseconds: 300),
              width: deviceWidth,
              height: deviceHeight,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: menuOpen == false
                    ? BorderRadius.zero
                    : BorderRadius.circular(25),
              ),
            ),
            AnimatedContainer(
              transform: Matrix4.translationValues(xCoordHome, yCoordHome, 0)
                ..scale(scaleHome)
                ..rotateZ(zRotateHome),
              duration: Duration(milliseconds: 300),
              width: deviceWidth,
              height: deviceHeight,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: menuOpen == false
                      ? BorderRadius.zero
                      : BorderRadius.circular(25),
                  image: DecorationImage(
                      alignment: Alignment.topRight,
                      image: AssetImage("assets/home_background.png"))),
              child: SafeArea(
                  child: Stack(
                children: [
                  Container(
                      width: deviceHeight,
                      height: deviceHeight,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if (menuOpen == false) {
                                      menuOpen = true;
                                      xCoordHome = deviceWidth * 0.7;
                                      yCoordHome = deviceHeight * 0.1;
                                      scaleHome = 0.8;
                                      zRotateHome = -0.15;
                                      menuOpacity = 1;
                                    } else {
                                      menuOpen = false;
                                      xCoordHome = 0;
                                      yCoordHome = 0;
                                      scaleHome = 1;
                                      zRotateHome = 0;
                                      menuOpacity = 0;
                                    }
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            width: 1, color: Colors.black12)),
                                    child: SvgPicture.asset(
                                      "assets/icon_menu.svg",
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 21,
                                  foregroundImage:
                                      AssetImage("assets/avatar.png"),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Text(
                              "Hello",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w700, fontSize: 34),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Welcome to Yoga Diet.",
                              style: GoogleFonts.raleway(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                  color: kGrey),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: kLightGrey,
                              ),
                              child: TextField(
                                style: GoogleFonts.raleway(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                decoration: InputDecoration(
                                    prefixIcon: SvgPicture.asset(
                                      "assets/icon_search.svg",
                                      fit: BoxFit.none,
                                    ),
                                    hintText: "Search",
                                    hintStyle: GoogleFonts.raleway(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: kGrey),
                                    border: InputBorder.none),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Chip(
                                      backgroundColor: Colors.black,
                                      label: Text(
                                        "All",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            color: Colors.white),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Chip(
                                      backgroundColor: kLightGrey,
                                      label: Text(
                                        "Beginner",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            color: kGrey),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Chip(
                                      backgroundColor: kLightGrey,
                                      label: Text(
                                        "Regular",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            color: kGrey),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Chip(
                                      backgroundColor: kLightGrey,
                                      label: Text(
                                        "Expert",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            color: kGrey),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Chip(
                                      backgroundColor: kLightGrey,
                                      label: Text(
                                        "Pro",
                                        style: GoogleFonts.raleway(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 13,
                                            color: kGrey),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              child: GridView.count(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                mainAxisSpacing: 10,
                                crossAxisSpacing: 10,
                                crossAxisCount: 2,
                                children: [
                                  Card(
                                    color: Colors.teal,
                                  ),
                                  Card(
                                    color: Colors.cyan,
                                  ),
                                  Card(
                                    color: Colors.yellowAccent,
                                  ),
                                  Card(
                                    color: Colors.deepOrange,
                                  ),
                                  Card(
                                    color: Colors.red,
                                  ),
                                  Card(
                                    color: Colors.yellow,
                                  ),
                                  Card(
                                    color: Colors.purpleAccent,
                                  ),
                                  Card(
                                    color: Colors.indigo,
                                  ),
                                  Card(
                                    color: Colors.black,
                                  ),
                                  Card(
                                    color: Colors.pinkAccent,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 60,
                            )
                          ],
                        ),
                      )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 60,
                      width: deviceWidth,
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: menuOpen == false
                                ? BorderRadius.zero
                                : BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      height: 60,
                      width: deviceWidth,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/icon_home.svg",
                          ),
                          SvgPicture.asset(
                            "assets/icon_training.svg",
                          ),
                          SvgPicture.asset(
                            "assets/icon_add.svg",
                          ),
                          SvgPicture.asset(
                            "assets/icon_store.svg",
                          ),
                          SvgPicture.asset(
                            "assets/icon_account.svg",
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
