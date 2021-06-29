import 'package:flutter/material.dart';
import 'package:ui01_onboarding/screens/onboarding.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToOnboarding();
    super.initState();
  }

  goToOnboarding() async {
    Future.delayed(Duration(milliseconds: 750)).then((value) => Navigator.push(
        context, MaterialPageRoute(builder: (context) => Onboarding())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDA0A8),
    );
  }
}
