import 'package:flutter/material.dart';
import 'package:volo/models/drawer.dart';
import 'package:volo/models/postWidget.dart';
import 'package:volo/screens/profilePage.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);

    double screenWidth = _mediaQueryData.size.width;
    double screenHeight = _mediaQueryData.size.height;

    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 38,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: <Widget>[
                    SliverAppBar(
                      expandedHeight: 135,
                      backgroundColor: Colors.white,
                      automaticallyImplyLeading: false,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.parallax,
                        background: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Text(
                                "Welcome\nback ,",
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.all(5),
                            //   child: Text(
                            //     "",
                            //     "back ,",
                            //     style: TextStyle(fontSize: 50),
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PostWidget(
                postImage: 'images/placeholderImg.png',
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                companyName: 'Fairless Hills',
                date: 15,
                month: 10,
                year: 2021,
                companyLogo: 'images/placeholderIcon.png',
                noLikes: 234,
                starRating: 4.7,
                RoutePage: ProfilePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
