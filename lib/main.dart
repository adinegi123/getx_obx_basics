import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/getBuilder.dart';
import 'package:get_x/getx_and_Obx.dart';
import 'package:get_x/homepage.dart';
import 'package:get_x/navigation.dart';
import 'package:get_x/snack_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      getPages: [
        GetPage(name: ('/'), page: () => HomePage()),
        GetPage(name: '/navigation', page: () => Navigation_Screen()),
        GetPage(name: '/snack_bar', page: () => Snack_Bar()),
        GetPage(name: '/getBuilder', page: () => GetBuilderPage()),
        GetPage(name: '/getx_andObx', page: () => GetXandObx())
      ],
    );
  }
}
