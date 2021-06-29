import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui01_onboarding/models/onboarding_model.dart';
import 'package:ui01_onboarding/screens/custom_widget/radial_painter.dart';
import 'package:ui01_onboarding/screens/onboarding_screen/onboard_screens.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> with AnimationMixin {
  double onboardingIndex = 0;
  //Animation Controller
  AnimationController textController;
  //Animation Variable
  Animation<double> textOpacity;

  @override
  void initState() {
    textController = createController();
    textOpacity = 0.0.tweenTo(1.0).animatedBy(textController);
    Future.delayed(500.milliseconds)
        .then((value) => textController.play(duration: 1.seconds));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PageController onboardingController = PageController();
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    setOnboardingIndex() {
      setState(() {
        onboardingIndex++;
      });
    }

    return Scaffold(
        body: Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (_) => setOnboardingIndex(),
              controller: onboardingController,
              children: [
                Onboard01(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
                Onboard02(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
                Onboard03(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
                Onboard04(deviceHeight: deviceHeight, deviceWidth: deviceWidth),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: deviceHeight * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Opacity(
                    opacity: textOpacity.value,
                    child: Text(
                      onboardingList[onboardingIndex.toInt()].title,
                      textAlign:
                          onboardingList[onboardingIndex.toInt()].textAlign,
                      style: GoogleFonts.secularOne(fontSize: 36, height: 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Opacity(
                    opacity: textOpacity.value,
                    child: Text(
                      onboardingList[onboardingIndex.toInt()].description,
                      textAlign:
                          onboardingList[onboardingIndex.toInt()].textAlign,
                      style:
                          GoogleFonts.ruda(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 25,
            right: 25,
            child: Container(
              width: 60,
              height: 60,
              child: CustomPaint(
                foregroundPainter: RadialPainter(
                    bgColor: Colors.white,
                    lineColor: Colors.black,
                    percent: (onboardingIndex + 1) * 0.25,
                    width: 10),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      onboardingController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                      textController.reset();
                      Future.delayed(500.milliseconds).then((value) =>
                          textController.play(duration: 750.milliseconds));
                    },
                    child: SvgPicture.asset("assets/icons/next_icon.svg"),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
