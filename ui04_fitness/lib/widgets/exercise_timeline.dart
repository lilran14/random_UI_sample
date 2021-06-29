import 'package:flutter/material.dart';

class ExerciseTimeline extends StatelessWidget {
  final String exerciseName;
  final String duration;
  final String imageUrl;

  const ExerciseTimeline(
      {Key key, this.exerciseName, this.duration, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Image.asset(imageUrl),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              exerciseName,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              duration,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black38),
            )
          ],
        )
      ],
    );
  }
}
