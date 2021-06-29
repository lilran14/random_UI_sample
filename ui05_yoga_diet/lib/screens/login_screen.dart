import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui05_yoga_diet/color_pallete.dart';
import 'package:ui05_yoga_diet/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: deviceWidth,
        height: deviceHeight,
        decoration: BoxDecoration(gradient: kLoginBackground),
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              height: 340,
              width: deviceWidth,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset("assets/logo_yoga_diet.png")),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset("assets/login_person.png"))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Text(
                "FIND OUT EXACTLY WHAT DIET & YOGA TRAINING WILL WORK SPECIFICALLY FOR YOU.",
                style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 255,
              height: 60,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                color: kPurple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Try It Now",
                  style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Not a member? Signup now",
              style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              "Forget password?",
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
