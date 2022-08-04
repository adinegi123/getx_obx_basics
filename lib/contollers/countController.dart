import 'package:get/get.dart';

class countController extends GetxController {
  int count = 0;
  incrementCount() {
    count++;
    update(); //this will update all the listeners to this getxcontroller
  }
}
