import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ui03_finance/color_pallete.dart';
import 'package:ui03_finance/screens/login_screen.dart';
import 'package:ui03_finance/screens/transaction_screen.dart';
import 'package:ui03_finance/widgets/overview_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 25, 25, 100),
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransactionScreen()));
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: kShadowBlue,
                                offset: Offset(0, 5),
                                blurRadius: 10,
                              )
                            ]),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    TransactionScreen()));
                                      },
                                      child: Icon(LineIcons.bars)),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginScreen()));
                                      },
                                      child: Icon(LineIcons.alternateSignOut)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Hero(
                              tag: "AvatarImage",
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/images/avatar_01.png",
                                  height: 90,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Hira Diaz",
                                style: GoogleFonts.poppins(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                    color: kDarkBlue)),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "UX / UI Designer",
                              style: TextStyle(fontSize: 10),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 40, horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "\$8900",
                                        style: TextStyle(color: kDarkBlue),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Income",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 45,
                                      width: 40,
                                      child: VerticalDivider(
                                          thickness: 1, color: Colors.grey)),
                                  Column(
                                    children: [
                                      Text(
                                        "\$5500",
                                        style: TextStyle(color: kDarkBlue),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Expenses",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                      height: 45,
                                      width: 40,
                                      child: VerticalDivider(
                                          thickness: 1, color: Colors.grey)),
                                  Column(
                                    children: [
                                      Text(
                                        "\$890",
                                        style: TextStyle(color: kDarkBlue),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Loan",
                                        style: TextStyle(fontSize: 9),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: Row(
                        children: [
                          Text("Overview",
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: kDarkBlue)),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 20,
                            width: 25,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  LineIcons.bell,
                                  size: 20,
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Text("Sept 13, 2020",
                              style: TextStyle(
                                  color: kDarkBlue,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                    ),
                    OverviewCard(
                        type: OverViewType.HomeScreen,
                        icon: Icon(LineIcons.arrowUp),
                        title: "Sent",
                        subTitle: "Sending payment to client",
                        total: "150"),
                    SizedBox(
                      height: 15,
                    ),
                    OverviewCard(
                        type: OverViewType.HomeScreen,
                        icon: Icon(LineIcons.arrowDown),
                        title: "Receive",
                        subTitle: "Receiving Salary from company",
                        total: "250"),
                    SizedBox(
                      height: 15,
                    ),
                    OverviewCard(
                        type: OverViewType.HomeScreen,
                        icon: Icon(LineIcons.commentDollar),
                        title: "Loan",
                        subTitle: "Loan for car",
                        total: "400"),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(color: kBackground, boxShadow: [
                BoxShadow(
                  color: kShadowBlue,
                  offset: Offset(0, -5),
                  blurRadius: 10,
                )
              ]),
              padding: const EdgeInsets.all(25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(LineIcons.home),
                  Icon(LineIcons.creditCard),
                  Container(
                    height: 30,
                    width: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kDarkBlue),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        LineIcons.plus,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                  Icon(LineIcons.dollarSign),
                  Icon(LineIcons.userCircle),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
