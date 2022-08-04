import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/homepage.dart';

class Navigation_Screen extends StatelessWidget {
  const Navigation_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Navigation|Send Data next sc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'You have successfully Navigated to a new Screen',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(5),
              color: Colors.black,
              child: TextButton(
                  onPressed: () {
                    Get.offAll(HomePage());
                  },
                  child: Text(
                    'Go back to homePage',
                    style: TextStyle(color: Colors.white),
                  ))),
          Center(
            child: Text(
              Get.arguments.toString(),
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
