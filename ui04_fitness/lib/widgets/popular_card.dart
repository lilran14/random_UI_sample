import 'package:flutter/material.dart';
import 'package:ui04_fitness/color_pallete.dart';

class PopularCard extends StatelessWidget {
  final String level;
  final String title;
  final String rating;
  final String duration;
  final String imageUrl;
  final Color backgroundColor;
  final VoidCallback onTap;

  const PopularCard(
      {Key key,
      this.level,
      this.title,
      this.rating,
      this.duration,
      this.imageUrl,
      this.backgroundColor,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Container(
          height: 380,
          width: 230,
          color: backgroundColor,
          padding: EdgeInsets.fromLTRB(15, 30, 5, 0),
          child: Container(
            decoration: BoxDecoration(
                color: backgroundColor,
                image: DecorationImage(
                    alignment: Alignment.bottomRight,
                    fit: BoxFit.fitHeight,
                    image: AssetImage(imageUrl))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  level,
                  style: TextStyle(
                    color: Colors.black26,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kOrange, borderRadius: BorderRadius.circular(15)),
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
                        rating,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  duration,
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
