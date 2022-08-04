import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 43.0),
            child: Text(
              'Homepage',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          '/snack_bar',
                        );
                      },
                      child: Container(
                        color: Colors.black54,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SnackBar,Dialog and BottomSheet',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                        height: 100,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/navigation', arguments: [
                          'this',
                          'is',
                          'the',
                          'list'
                        ]); //passing string as an argument
                      },
                      child: Container(
                        color: Colors.blue,
                        height: 100,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Navigation|Send data to next screen',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/getBuilder');
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.red,
                        height: 100,
                        child: Center(
                          child: Text('State Management|Get Builder',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/getx_andObx');
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        color: Colors.green,
                        height: 100,
                        child: Center(
                          child: Text('GetX and ObxX',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
