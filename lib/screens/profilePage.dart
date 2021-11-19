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
      backgroundColor: Colors.grey[200],
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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/logo1.png'),
            ),
            Text(
              'VOLO',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey[200],
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
                          'Shop no 121 Patrakarpuram \nChauraha Gomtinagar \nLucknow - 226010',
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
                ],
              ),
            ),
            SizedBox(
              height: pageHeight * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: pageWidth * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      color: Colors.white,
                    ),
                    width: pageWidth * 0.47,
                    child: Padding(
                      padding: EdgeInsets.all(
                        pageWidth * 0.03,
                      ),
                      child: GestureDetector(
                        child: Row(
                          children: [
                            Icon(
                              Icons.call,
                              size: pageHeight * 0.045,
                            ),
                            SizedBox(
                              width: pageWidth * 0.03,
                            ),
                            Text(
                              'Call Merchant',
                              style: TextStyle(
                                fontSize: pageHeight * 0.022,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7.5),
                      color: Colors.white,
                    ),
                    width: pageWidth * 0.47,
                    child: Padding(
                      padding: EdgeInsets.all(
                        pageWidth * 0.03,
                      ),
                      child: GestureDetector(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: pageHeight * 0.045,
                            ),
                            SizedBox(
                              width: pageWidth * 0.03,
                            ),
                            Text(
                              'Open Maps',
                              style: TextStyle(
                                fontSize: pageHeight * 0.022,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: pageHeight * 0.01,
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: pageWidth * 0.045),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Feedback',
                          style: TextStyle(
                            fontSize: pageHeight * 0.02,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Text('View All'),
                            Icon(
                              Icons.chevron_right,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: pageWidth * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: Column(
                          children: [
                            Text('Rating'),
                            Icon(Icons.star),
                            Text('4.7/5'),
                          ],
                        ),
                      ),
                      Container(
                        width: pageWidth * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: Column(
                          children: [
                            Text('Rating'),
                            Icon(Icons.star),
                            Text('4.7/5'),
                          ],
                        ),
                      ),
                      Container(
                        width: pageWidth * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7.5),
                        ),
                        child: Column(
                          children: [
                            Text('Rating'),
                            Icon(Icons.star),
                            Text('4.7/5'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: pageHeight * 0.02,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    'Offers',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: pageHeight * 0.03,
                    ),
                  ),
                  SizedBox(
                    height: pageHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: pageHeight * 0.22,
                        child: Image(
                          image: AssetImage('images/deals.png'),
                        ),
                      ),
                      Container(
                        height: pageHeight * 0.22,
                        child: Image(
                          image: AssetImage('images/deals.png'),
                        ),
                      ),
                      Container(
                        height: pageHeight * 0.22,
                        child: Image(
                          image: AssetImage('images/deals.png'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: pageHeight * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: pageHeight * 0.22,
                        child: Image(
                          image: AssetImage('images/deals.png'),
                        ),
                      ),
                      Container(
                        height: pageHeight * 0.22,
                        child: Image(
                          image: AssetImage('images/deals.png'),
                        ),
                      ),
                      Container(
                        height: pageHeight * 0.22,
                        child: Image(
                          image: AssetImage('images/deals.png'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: pageHeight * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
