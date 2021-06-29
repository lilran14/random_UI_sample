import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui02_login/pages/register_page.dart';
import 'package:ui02_login/shared/color_pallete.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                Image.asset("assets/form.png"),
                SizedBox(
                  height: 20,
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
                          "Sign In",
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
                                  "Sign In",
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
                              TextSpan(text: "I'm new user. "),
                              TextSpan(
                                  text: 'Sign Up',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RegisterPage(),
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
