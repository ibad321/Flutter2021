import 'package:flutter/material.dart';
import 'package:flutter_application_3/counter.dart';
import 'package:flutter_application_3/pages/Signup_page.dart';
import 'package:flutter_application_3/pages/day6.dart';
import 'package:flutter_application_3/pages/day7.dart';
import 'package:flutter_application_3/pages/day8.dart';
import 'package:flutter_application_3/pages/login_page.dart';

// import 'package:flutter_application_3/pages/Day5.dart';
// import 'package:flutter_application_3/pages/day8.dart';
// import 'package:flutter_application_3/pages/Signup_page.dart';
// import 'package:flutter_application_3/pages/day6.dart';
// import 'package:flutter_application_3/pages/day7.dart';
// import 'package:flutter_application_3/pages/homepage.dart';
import 'package:flutter_application_3/pages/ongeneratedroutes.dart';
import 'package:flutter_application_3/pages/tiktok_ui.dart';
// import 'package:flutter_application_3/pages/ongeneratedroutes.dart';
// import 'package:flutter_application_3/pages/tiktok_ui.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      themeMode: ThemeMode.dark,
      darkTheme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      initialRoute: "/",
      // routes: {
      //   "/": (context)=> Tikk(),
      //   "/signup" : (context) => Signup(),
      //   "/day7" :(context) => Day7(),
      //   "/login":(context) => Loginpage(),
      //   "/day8":(context) => Day8(),
      //   "/day7":(context)=> Day7(),
      //   "/Stefull": (context) => MyStateFullWidget(),
      //   "/counter" :(context)=> Counter(),
      //   "/TictokUi" :(context) => Tiktokui(),
      //   "/tiktok": (context)=>Tikk(),
       
        
    
      // },
      // );
  
     
  
      onGenerateRoute: OnGenerateRoute.route,
     
      // home: MyStateFullWidget(),
       );
       
  }

}
