import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProfilePage extends StatelessWidget {
  final List<String> imageList = [
    'images/fairlessHills2.png',
    'images/fairlessHills.png',
    'images/fairlessHills3.png',
    'images/fairlessHills4.png',
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);

    double pageWidth = _mediaQueryData.size.width;
    double pageHeight = _mediaQueryData.size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'VOLO',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[100],
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  0,
                  pageHeight * 0.04,
                  0,
                  pageHeight * 0.04,
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    initialPage: 1,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                  items: imageList
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.asset(
                                e,
                                fit: BoxFit.fill,
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            SizedBox(
              height: pageHeight * 0.012,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: pageHeight * 0.01,
                  ),
                  Text(
                    'Fairless Hills',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: pageHeight * 0.045,
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.012,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: pageWidth * 0.045,
                    ),
                    child: Text(
                      'Cafe Barista, dop by for a relaxing cup of coffee accompanied by delicious and unforgetful bagels to go with the soothing atmosphere. ☕ ',
                      style: TextStyle(
                        fontSize: pageHeight * 0.021,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.012,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: pageWidth * 0.045,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Address:',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: pageHeight * 0.025,
                          ),
                        ),
                        SizedBox(
                          width: pageWidth * 0.03,
                        ),
                        Text(
                          'Shop no 121 Patrakarpuram Chauraha \nGomtinagar Lucknow - 226010',
                          style: TextStyle(
                            fontSize: pageHeight * 0.02,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.012,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: Row(
                          children: [
                            Icon(Icons.call),
                            Text(
                              'Call Merchant',
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(),
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
