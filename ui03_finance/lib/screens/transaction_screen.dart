import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ui03_finance/color_pallete.dart';
import 'package:ui03_finance/widgets/overview_card.dart';
import 'package:ui03_finance/widgets/transaction_custom_draw.dart';

class TransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(LineIcons.angleLeft, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: Icon(LineIcons.search, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("Recent Transactions",
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: kDarkBlue)),
                  SizedBox(
                    width: 5,
                  ),
                  Spacer(),
                  Text("See all"),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 25,
                    decoration: BoxDecoration(
                        color: kDarkBlue,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: kShadowBlue,
                            offset: Offset(0, 5),
                            blurRadius: 10,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: kShadowBlue,
                            offset: Offset(0, 5),
                            blurRadius: 10,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "Income",
                        style: TextStyle(
                            fontSize: 10,
                            color: kGray,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: kShadowBlue,
                            offset: Offset(0, 5),
                            blurRadius: 10,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "Expense",
                        style: TextStyle(
                            fontSize: 10,
                            color: kGray,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text("Today",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: kDarkBlue)),
              SizedBox(
                height: 20,
              ),
              OverviewCard(
                  type: OverViewType.TransactionScreen,
                  icon: Icon(
                    LineIcons.envelopeOpenText,
                    size: 40,
                    color: kDarkBlue,
                  ),
                  title: "Payment",
                  subTitle: "Sending payment to client",
                  total: "30.00"),
              SizedBox(
                height: 25,
              ),
              AspectRatio(
                aspectRatio: 1 / 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: CustomPaint(
                        painter: TransactionBackground(),
                      ),
                    ),
                    Hero(
                      tag: "AvatarImage",
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/avatar_01.png",
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        child: CircleAvatar(
                          radius:
                              MediaQuery.of(context).size.width * 0.125 / 2 + 4,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius:
                                MediaQuery.of(context).size.width * 0.125 / 2,
                            backgroundImage:
                                AssetImage("assets/images/avatar_02.png"),
                          ),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.width * 0.3,
                        right: 0,
                        child: CircleAvatar(
                          radius:
                              MediaQuery.of(context).size.width * 0.125 / 2 + 4,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius:
                                MediaQuery.of(context).size.width * 0.125 / 2,
                            backgroundImage:
                                AssetImage("assets/images/avatar_03.png"),
                          ),
                        )),
                    Positioned(
                        top: MediaQuery.of(context).size.width * 0.3,
                        left: 0,
                        child: CircleAvatar(
                          radius:
                              MediaQuery.of(context).size.width * 0.125 / 2 + 4,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius:
                                MediaQuery.of(context).size.width * 0.125 / 2,
                            backgroundImage:
                                AssetImage("assets/images/avatar_04.png"),
                          ),
                        )),
                    Positioned(
                        bottom: MediaQuery.of(context).size.width * 0.1,
                        left: MediaQuery.of(context).size.width * 0.1,
                        child: CircleAvatar(
                          radius:
                              MediaQuery.of(context).size.width * 0.125 / 2 + 4,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius:
                                MediaQuery.of(context).size.width * 0.125 / 2,
                            backgroundImage:
                                AssetImage("assets/images/avatar_05.png"),
                          ),
                        )),
                    Positioned(
                        bottom: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1,
                        child: CircleAvatar(
                          radius:
                              MediaQuery.of(context).size.width * 0.125 / 2 + 4,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius:
                                MediaQuery.of(context).size.width * 0.125 / 2,
                            backgroundImage:
                                AssetImage("assets/images/avatar_06.png"),
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  elevation: 0,
                  onPressed: () {},
                  child: Text(
                    "See Details",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                  ),
                  color: kDarkBlue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
