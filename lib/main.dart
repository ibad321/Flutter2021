import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/Day5.dart';
import 'package:flutter_application_3/pages/tiktok_ui.dart';
// import 'package:flutter_application_3/pages/Signup_page.dart';
// import 'package:flutter_application_3/pages/day4.dart';
// import 'package:flutter_application_3/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter course",
      // home: HomePage(),
      // home: ImagePage(),
      // home: Rwcolmn(),
      // home: Loginpage(),
      // home: Day4(),
      // home: Signup(),
      // home: Day5(),
      home: Tiktokui(),

    );
  }
}
