import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class Onboard04 extends StatefulWidget {
  const Onboard04({
    Key key,
    @required this.deviceHeight,
    @required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  @override
  _Onboard04State createState() => _Onboard04State();
}

class _Onboard04State extends State<Onboard04> with AnimationMixin {
  Animation<double> personOpacity;
  @override
  void initState() {
    personOpacity = 0.0.tweenTo(1.0).animatedBy(controller);
    Future.delayed(700.milliseconds)
        .then((value) => controller.play(duration: 500.milliseconds));
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
              opacity: personOpacity.value,
              child: Image.asset(
                "assets/images/04_Person.png",
                width: widget.deviceWidth * 0.9,
                alignment: Alignment.bottomCenter,
              ),
            )),
      ],
    );
  }
}
