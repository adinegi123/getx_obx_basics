import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Snack_Bar extends StatelessWidget {
  const Snack_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MaterialButton(
                  minWidth: double.maxFinite,
                  color: Colors.green[800],
                  child: Text('Show SnackBar'),
                  onPressed: () {
                    Get.snackbar('Great SnackBar', 'Simple SnackBar Message',
                        snackPosition: SnackPosition.BOTTOM,
                        colorText: Colors.white,
                        backgroundColor: Colors.grey);
                  }),
              MaterialButton(
                  minWidth: double.maxFinite,
                  child: Text('Show Dialog'),
                  color: Colors.green[800],
                  onPressed: () {
                    Get.defaultDialog(
                        title: 'Dialogue',
                        content: Column(
                          children: [
                            Text('this is amazing'),
                            Text('this is another widget'),
                          ],
                        ));
                  }),
              MaterialButton(
                  minWidth: double.maxFinite,
                  color: Colors.green[800],
                  child: Text('Show BottomSheet'),
                  onPressed: () {
                    Get.bottomSheet(Container(
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Text('Getx Bottom sheet one'),
                          Text('Getx Bottom sheet two'),
                        ],
                      ),
                    ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
