import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui03_finance/color_pallete.dart';

enum OverViewType {
  HomeScreen,
  TransactionScreen,
}

class OverviewCard extends StatelessWidget {
  final Icon icon;
  final String title;
  final String subTitle;
  final String total;
  final OverViewType type;

  const OverviewCard(
      {Key key,
      @required this.type,
      @required this.icon,
      @required this.title,
      @required this.subTitle,
      @required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
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
      child: Row(
        children: [
          Container(
            width: 46,
            height: 44,
            decoration: BoxDecoration(
                color: type == OverViewType.HomeScreen
                    ? kShadowBlue
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(15)),
            child: icon,
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      subTitle,
                      style: TextStyle(fontSize: 9),
                    ),
                    Text(
                      "\$$total",
                      style: GoogleFonts.poppins(
                          color: type == OverViewType.HomeScreen
                              ? Colors.black
                              : kDarkBlue,
                          fontWeight: FontWeight.w700,
                          fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
