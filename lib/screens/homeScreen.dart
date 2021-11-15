import 'package:flutter/material.dart';
import 'package:volo/utils/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);

    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.sort,
            size: 38,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Image(
        //       image: kAppLogo1,
        //       fit: BoxFit.cover,
        //       height: screenHeight * 0.032,
        //     ),
        //     Text(
        //       'VOLO',
        //       style: TextStyle(color: Colors.black),
        //     ),
        //   ],
        // ),
        title: Text(
          'VOLO',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 38,
            ),
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
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
                                  backgroundImage:
                                      AssetImage('images/placeholderIcon.png'),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.02,
                                ),
                                Text(
                                  'Fairless Hills',
                                  style:
                                      TextStyle(fontSize: screenWidth * 0.05),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.hourglass_full_rounded,
                                  size: screenHeight * 0.032,
                                ),
                                Text(
                                  ': 15 Oct 21',
                                  style:
                                      TextStyle(fontSize: screenWidth * 0.04),
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
                          'images/placeholderImg.png',
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
                                  size: screenHeight * 0.032,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.02,
                                ),
                                Text(
                                  '234K',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.05,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  ' liked this deal',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: screenHeight * 0.032,
                                  color: Colors.yellow,
                                ),
                                Text(
                                  ' 4.7/5',
                                  style:
                                      TextStyle(fontSize: screenWidth * 0.04),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
