import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(50, 60, 0, 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 24,
              height: 24,
              child: Stack(children: [
                SvgPicture.asset("assets/icon_bell.svg"),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.red, shape: BoxShape.circle),
                  ),
                )
              ])),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 70,
            height: 70,
            padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: Colors.white60)),
            child: CircleAvatar(
              foregroundImage: AssetImage("assets/avatar.png"),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Hi, Regina",
            style: GoogleFonts.raleway(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 24),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/icon_prime.svg"),
              SizedBox(
                width: 20,
              ),
              Text(
                "Prime",
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                "assets/icon_account.svg",
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Account",
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/icon_plan.svg"),
              SizedBox(
                width: 20,
              ),
              Text(
                "Plan",
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/icon_setting.svg"),
              SizedBox(
                width: 20,
              ),
              Text(
                "Setting",
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset("assets/icon_logout.svg"),
              SizedBox(
                width: 20,
              ),
              Text(
                "Logout",
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Spacer(),
          Text(
            "24°c",
            style: GoogleFonts.raleway(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 34),
            textAlign: TextAlign.start,
          ),
          Text(
            "Partly cloudy",
            style: GoogleFonts.raleway(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
