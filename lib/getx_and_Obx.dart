import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/contollers/valueController.dart';

class GetXandObx extends StatelessWidget {
  const GetXandObx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Text('GetX and ObX'),
        )),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            GetX<ValueController>(
              init: ValueController(),
              builder: (_) {
                return Text(
                  'This is value 1:${_.valueModel.value.value1}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                );
              },
            ),
            Obx(() => Text(
                'This is value 2:${Get.find<ValueController>().valueModel.value.value2}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Center(
              child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  color: Colors.black,
                  child: TextButton(
                      onPressed: () {
                        Get.find<ValueController>()
                            .updateTheVaues('Aditi', 'Negi');
                      },
                      child: Text(
                        'Change the Value',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
