import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui02_login/pages/login_page.dart';
import 'package:ui02_login/shared/color_pallete.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height - 75),
          child: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.125,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/form.png",
                    fit: BoxFit.none,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorPallete.backgroundColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Create Account",
                          style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w900, fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Form(
                              child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Text("Full Name",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: ColorPallete.textGray)),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                autofocus: false,
                                decoration: InputDecoration(
                                  hintText: 'Full Name',
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(15),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorPallete.primaryColor),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Text("Phone Number",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: ColorPallete.textGray)),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.phone,
                                autofocus: false,
                                decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(15),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorPallete.primaryColor),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Text("Email Address",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: ColorPallete.textGray)),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                autofocus: false,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(15),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorPallete.primaryColor),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Text("Password",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.roboto(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        color: ColorPallete.textGray)),
                              ),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText: _obscureText,
                                autofocus: false,
                                decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      icon: _obscureText == true
                                          ? Icon(Icons.visibility)
                                          : Icon(Icons.visibility_off),
                                      onPressed: () {
                                        if (_obscureText == true) {
                                          setState(() {
                                            _obscureText = false;
                                          });
                                        } else {
                                          setState(() {
                                            _obscureText = true;
                                          });
                                        }
                                      }),
                                  hintText: 'Password',
                                  fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.all(15),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorPallete.primaryColor),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent, width: 0),
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                ),
                              ),
                            ],
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: SizedBox(
                            width: double.infinity,
                            height: 42,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                    primary: ColorPallete.primaryColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ))),
                          ),
                        ),
                        Expanded(
                            child: Center(
                                child: RichText(
                          text: TextSpan(
                            style: GoogleFonts.roboto(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(text: "I'm already a member. "),
                              TextSpan(
                                  text: 'Sign In',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoginPage(),
                                          ));
                                    },
                                  style: TextStyle(
                                      color: ColorPallete.primaryColor,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                        )))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
