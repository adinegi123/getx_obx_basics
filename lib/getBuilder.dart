import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/contollers/countController.dart';

class GetBuilderPage extends StatelessWidget {
  // countController controller = Get.put(countController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 43.0),
            child: Text(
              'GetBuilder|State Management',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<countController>(
              init: countController(),
              builder: (controller) {
                return Text(
                  'This is the count value ${controller.count}',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                );
              }),
          Center(
            child: Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                color: Colors.black,
                child: TextButton(
                    onPressed: () {
                      Get.find<countController>().incrementCount();
                    },
                    child: Text(
                      'Increament the value',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ))),
          ),
        ],
      ),
    );
  }
}
