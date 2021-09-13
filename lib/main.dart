import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/images_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "flutter course",
      // home: Homepage(),
      home: Imagespages(),
    );
  }
}
