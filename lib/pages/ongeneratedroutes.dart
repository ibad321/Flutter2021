import 'package:flutter/material.dart';
import 'package:flutter_application_3/listview2.dart';
import 'package:flutter_application_3/pages/Signup_page.dart';
import 'package:flutter_application_3/pages/Youtube%20search/Model/itemdata.dart';
import 'package:flutter_application_3/pages/Youtube%20search/playvideo.dart';
import 'package:flutter_application_3/pages/Youtube%20search/youtubesearchpage.dart';

import 'Drawer/AnimatedDrawer.dart';
import 'Drawer/simpleDrwer.dart';
import 'day8.dart';
import 'homepage.dart';
import 'login_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    if (settings.name == "/") {
      return MaterialPageRoute(builder: (_) => YoutubeSearchpage());
    } else if (settings.name == "/playVideo") {
      if (args is ItemData) {
        return MaterialPageRoute(
            builder: (_) => PlayVideo(
                  item: args,
                ));
      } else {
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text("error"),
                  ),
                  body: Center(
                    child: Text("error"),
                  ),
                ));
      }
    } else if (settings.name == "/signup") {
      return MaterialPageRoute(builder: (_) => Signup());
    } else if (settings.name == "/login") {
      return MaterialPageRoute(builder: (_) => Loginpage());
    } else if (settings.name == "/homePage") {
      if (args is UserData)
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  userData: args,
                ));
      else
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(
                    title: Text("error"),
                  ),
                  body: Center(
                    child: Text("error"),
                  ),
                ));
    } else {
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                appBar: AppBar(
                  title: Text("error"),
                ),
                body: Center(
                  child: Text("error"),
                ),
              ));
    }
  }
}
