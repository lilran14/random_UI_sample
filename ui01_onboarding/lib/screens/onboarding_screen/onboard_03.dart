import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class Onboard03 extends StatefulWidget {
  const Onboard03({
    Key key,
    @required this.deviceHeight,
    @required this.deviceWidth,
  }) : super(key: key);

  final double deviceHeight;
  final double deviceWidth;
  @override
  _Onboard03State createState() => _Onboard03State();
}

class _Onboard03State extends State<Onboard03> with AnimationMixin {
  Animation<double> allOpacity;
  Animation<double> donutPosition;
  Animation<double> donutShadowSize;
  Animation<double> marshmellow1Position;
  Animation<double> marshmellow2Position;
  Animation<double> marshmellow3Position;
  Animation<double> marshmellow4Position;

  @override
  void initState() {
    allOpacity = 0.0.tweenTo(1.0).animatedBy(controller);
    donutPosition = (widget.deviceHeight * 0.1)
        .tweenTo(widget.deviceHeight * 0.15)
        .animatedBy(controller);
    marshmellow1Position = (widget.deviceHeight * 0.525)
        .tweenTo(widget.deviceHeight * 0.475)
        .animatedBy(controller);
    marshmellow2Position = (widget.deviceHeight * 0.645)
        .tweenTo(widget.deviceHeight * 0.595)
        .animatedBy(controller);
    marshmellow3Position = (widget.deviceHeight * 0.575)
        .tweenTo(widget.deviceHeight * 0.525)
        .animatedBy(controller);
    marshmellow4Position = (widget.deviceHeight * 0.55)
        .tweenTo(widget.deviceHeight * 0.5)
        .animatedBy(controller);
    donutShadowSize = 1.2.tweenTo(1.0).animatedBy(controller);
    allOpacity = 0.0.tweenTo(1.0).animatedBy(controller);
    Future.delayed(500.milliseconds)
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
          color: Color(0xFFB4EDA0),
        ),
        Positioned(
            bottom: marshmellow4Position.value,
            child: Opacity(
              opacity: allOpacity.value,
              child: Image.asset(
                "assets/images/03_Marsmallow_04.png",
              ),
            )),
        Positioned(
            bottom: widget.deviceHeight * 0.15,
            child: Transform.scale(
                scale: donutShadowSize.value,
                child: Opacity(
                    opacity: allOpacity.value,
                    child: Image.asset("assets/images/03_Shadow.png")))),
        Positioned(
            bottom: donutPosition.value,
            child: Opacity(
                opacity: allOpacity.value,
                child: Image.asset("assets/images/03_Donut.png"))),
        Positioned(
            left: widget.deviceWidth * 0.2,
            bottom: marshmellow1Position.value,
            child: Opacity(
                opacity: allOpacity.value,
                child: Image.asset("assets/images/03_Marsmallow_01.png"))),
        Positioned(
            bottom: marshmellow2Position.value,
            child: Opacity(
                opacity: allOpacity.value,
                child: Image.asset("assets/images/03_Marsmallow_02.png"))),
        Positioned(
            right: widget.deviceWidth * 0.2,
            bottom: marshmellow3Position.value,
            child: Opacity(
              opacity: allOpacity.value,
              child: Image.asset(
                "assets/images/03_Marsmallow_03.png",
              ),
            )),
      ],
    );
  }
}
