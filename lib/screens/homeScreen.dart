import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        child: Container(),
      ),
    );
  }
}
