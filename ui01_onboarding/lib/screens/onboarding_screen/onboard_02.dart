import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class Onboard02 extends StatefulWidget {
  const Onboard02({
    Key key,
    @required this.deviceHeight,
    @required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  _Onboard02State createState() => _Onboard02State();
}

class _Onboard02State extends State<Onboard02> with AnimationMixin {
  //Animation Controller
  AnimationController donut1Controller;
  AnimationController donut2Controller;
  AnimationController donut3Controller;
  AnimationController donut4Controller;
  AnimationController donut5Controller;
  AnimationController donut6Controller;
  AnimationController donut7Controller;

  //Animation Variable
  Animation<double> donut1Opacity;
  Animation<double> donut2Opacity;
  Animation<double> donut3Opacity;
  Animation<double> donut4Opacity;
  Animation<double> donut5Opacity;
  Animation<double> donut6Opacity;
  Animation<double> donut7Opacity;

  //Default
  Duration defaultDuration = 150.milliseconds;
  Tween<double> defaultTween = 0.0.tweenTo(1.0);

  @override
  void initState() {
    //define controller
    donut1Controller = createController();
    donut2Controller = createController();
    donut3Controller = createController();
    donut4Controller = createController();
    donut5Controller = createController();
    donut6Controller = createController();
    donut7Controller = createController();
    //define animation variable
    donut1Opacity = defaultTween.animatedBy(donut1Controller);
    donut2Opacity = defaultTween.animatedBy(donut2Controller);
    donut3Opacity = defaultTween.animatedBy(donut3Controller);
    donut4Opacity = defaultTween.animatedBy(donut4Controller);
    donut5Opacity = defaultTween.animatedBy(donut5Controller);
    donut6Opacity = defaultTween.animatedBy(donut6Controller);
    donut7Opacity = defaultTween.animatedBy(donut7Controller);
    //call animation
    Future.delayed(1.seconds)
        .then((value) => donut1Controller.play(duration: defaultDuration))
        .then((value) => donut2Controller.play(duration: defaultDuration))
        .then((value) => donut3Controller.play(duration: defaultDuration))
        .then((value) => donut4Controller.play(duration: defaultDuration))
        .then((value) => donut5Controller.play(duration: defaultDuration))
        .then((value) => donut6Controller.play(duration: defaultDuration))
        .then((value) => donut7Controller.play(duration: defaultDuration));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFFA2D4EB),
        ),
        Positioned(
          top: widget.deviceHeight * 0.35,
          child: Container(
            width: widget.deviceWidth,
            height: widget.deviceWidth * 0.75,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: widget.deviceWidth * 0.1,
                  child: Opacity(
                      opacity: donut1Opacity.value,
                      child: Image.asset("assets/images/02_Donut_01.png")),
                ),
                Positioned(
                  left: widget.deviceWidth * 0.25,
                  top: 0,
                  child: Opacity(
                      opacity: donut2Opacity.value,
                      child: Image.asset("assets/images/02_Donut_02.png")),
                ),
                Positioned(
                  right: widget.deviceWidth * 0.25,
                  top: 0,
                  child: Opacity(
                      opacity: donut3Opacity.value,
                      child: Image.asset("assets/images/02_Donut_03.png")),
                ),
                Positioned(
                  right: widget.deviceWidth * 0.1,
                  child: Opacity(
                      opacity: donut4Opacity.value,
                      child: Image.asset("assets/images/02_Donut_04.png")),
                ),
                Positioned(
                  right: widget.deviceWidth * 0.25,
                  bottom: 0,
                  child: Opacity(
                      opacity: donut5Opacity.value,
                      child: Image.asset("assets/images/02_Donut_06.png")),
                ),
                Positioned(
                  left: widget.deviceWidth * 0.25,
                  bottom: 0,
                  child: Opacity(
                      opacity: donut6Opacity.value,
                      child: Image.asset("assets/images/02_Donut_05.png")),
                ),
                Positioned(
                  child: Opacity(
                      opacity: donut7Opacity.value,
                      child: Image.asset("assets/images/02_Donut_07.png")),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
