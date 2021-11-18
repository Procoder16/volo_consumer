import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PostWidget extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final String companyName;
  final String companyLogo;
  final int date;
  final int month;
  final int year;
  final double noLikes;
  final double starRating;
  final String postImage;

  PostWidget({
    required this.postImage,
    required this.screenHeight,
    required this.screenWidth,
    required this.companyName,
    required this.date,
    required this.month,
    required this.year,
    required this.companyLogo,
    required this.noLikes,
    required this.starRating,
  });

  @override
  Widget build(BuildContext context) {
    double smallTextSize = screenWidth * 0.04;
    double iconSize = screenHeight * 0.032;

    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        screenHeight * 0.01,
        0,
        screenHeight * 0.01,
      ),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.02,
                0,
                screenWidth * 0.02,
                0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: screenWidth * 0.06,
                        backgroundImage: AssetImage(companyLogo),
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        companyName,
                        style: TextStyle(fontSize: screenWidth * 0.05),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.hourglass_full_rounded,
                        size: iconSize,
                      ),
                      Text(
                        DateFormat('dd-MM-yyyy')
                            .format(
                              DateTime.utc(year, month, date),
                            )
                            .toString(),
                        style: TextStyle(fontSize: smallTextSize),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Image(
              image: AssetImage(
                postImage,
              ),
              height: screenWidth,
              width: screenWidth,
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                screenWidth * 0.02,
                0,
                screenWidth * 0.02,
                0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_sharp,
                        color: Colors.pink,
                        size: iconSize,
                      ),
                      SizedBox(
                        width: screenWidth * 0.02,
                      ),
                      Text(
                        noLikes.toString(),
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' liked this deal',
                        style: TextStyle(
                          fontSize: smallTextSize,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: iconSize,
                        color: Colors.yellow,
                      ),
                      Text(
                        '${starRating}/5',
                        style: TextStyle(fontSize: smallTextSize),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
