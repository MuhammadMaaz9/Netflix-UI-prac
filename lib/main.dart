import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_ui/views/screen1.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
