import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class Onboard01 extends StatefulWidget {
  const Onboard01({
    Key key,
    @required this.deviceHeight,
    @required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;

  @override
  _Onboard01State createState() => _Onboard01State();
}

class _Onboard01State extends State<Onboard01> with AnimationMixin {
  Animation<double> backgroundOpacity;
  Animation<double> donutOpacity;
  Animation<double> donutBottomPosition;
  @override
  void initState() {
    backgroundOpacity = 0.0.tweenTo(1.0).animatedBy(controller);
    donutOpacity = 0.0.tweenTo(1.0).animatedBy(controller);
    donutBottomPosition = (widget.deviceHeight * 0.3)
        .tweenTo(widget.deviceHeight * 0.25)
        .animatedBy(controller);
    Future.delayed(500.milliseconds)
        .then((value) => controller.play(duration: 750.milliseconds));
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
          color: Color(0xFFEDA0A8),
        ),
        Positioned(
            bottom: 0,
            child: Opacity(
                opacity: backgroundOpacity.value,
                child: Image.asset("assets/images/01_background.png"))),
        Positioned(
          bottom: donutBottomPosition.value,
          child: Opacity(
            opacity: donutOpacity.value,
            child: Image.asset(
              "assets/images/01_donuts.png",
              width: widget.deviceWidth * 0.4,
            ),
          ),
        )
      ],
    );
  }
}
