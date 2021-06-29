import 'package:flutter/material.dart';
import 'package:ui04_fitness/color_pallete.dart';
import 'package:ui04_fitness/widgets/exercise_timeline.dart';

class ExerciseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kLightBLue,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                top: 25,
                child: Container(
                  width: deviceWidth,
                  height: deviceHeight,
                  padding: EdgeInsets.symmetric(horizontal: 75),
                  child: Image.asset(
                    "assets/images/exercise_01.png",
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                )),
            Positioned(
                top: 25,
                child: Container(
                  width: deviceWidth,
                  padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black45,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      Container(
                        decoration: BoxDecoration(
                            color: kOrange,
                            borderRadius: BorderRadius.circular(15)),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "9.5",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
            DraggableScrollableSheet(
              minChildSize: 0.5,
              initialChildSize: 0.5,
              maxChildSize: 0.8,
              builder: (context, scrollController) => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: ListView(
                  controller: scrollController,
                  scrollDirection: Axis.vertical,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "From Denni",
                          style: TextStyle(
                            color: Colors.black26,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "30 min",
                          style: TextStyle(
                            color: kOrange,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Perfect for your training body balance and endurance",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Exercise",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ExerciseTimeline(
                      exerciseName: "Side lunges",
                      duration: "00:30",
                      imageUrl: "assets/images/exercise_detail_01.png",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExerciseTimeline(
                      exerciseName: "Dynamic quadripes",
                      duration: "02:30",
                      imageUrl: "assets/images/exercise_detail_02.png",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExerciseTimeline(
                      exerciseName: "Jump",
                      duration: "03:30",
                      imageUrl: "assets/images/exercise_detail_03.png",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExerciseTimeline(
                      exerciseName: "Plank",
                      duration: "04:30",
                      imageUrl: "assets/images/exercise_detail_04.png",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ExerciseTimeline(
                      exerciseName: "Squat Dumble",
                      duration: "05:30",
                      imageUrl: "assets/images/exercise_detail_05.png",
                    ),
                    SizedBox(
                      height: 110,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: deviceWidth,
                  padding: EdgeInsets.fromLTRB(30, 35, 30, 25),
                  height: 120,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [
                        0.0,
                        0.1,
                        0.3,
                        0.5
                      ],
                          colors: [
                        Colors.white.withOpacity(0),
                        Colors.white.withOpacity(0.5),
                        Colors.white.withOpacity(0.8),
                        Colors.white,
                      ])),
                  child: SizedBox(
                    child: MaterialButton(
                      elevation: 0,
                      color: kOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Text(
                        "Go",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
