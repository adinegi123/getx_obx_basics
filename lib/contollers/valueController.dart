import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/models/valueModel.dart';

class ValueController extends GetxController {
  final valueModel = ValueModel().obs; //to make it observable object viewmodel
  updateTheVaues(String newvalue1, String newvalue2) {
    valueModel.update((model) {
      model?.value1 = newvalue1;
      model?.value2 = newvalue2;
    });
  }
}
