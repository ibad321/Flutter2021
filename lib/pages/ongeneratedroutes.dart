import 'package:flutter/material.dart';
import 'package:flutter_application_3/gridview.dart';
import 'package:flutter_application_3/listview.dart';
import 'package:flutter_application_3/listview2.dart';
import 'package:flutter_application_3/page%20view.dart';
import 'package:flutter_application_3/pages/Animation/simpleAnimation.dart';
import 'package:flutter_application_3/pages/Signup_page.dart';
import 'package:flutter_application_3/pages/domain/entity.dart';
import 'package:flutter_application_3/pages/gridview2.dart';
import 'package:flutter_application_3/pages/listEntitybuilder2.dart';
import 'package:flutter_application_3/pages/listviewbulider.dart';

import '../pageview2.dart';
import 'Animation/Animatedbuilder.dart';
import 'Animation/Animation.dart';
import 'Animation/simpleAnimationpkg.dart';
import 'day8.dart';
import 'homepage.dart';
import 'login_page.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;

    if (settings.name == "/") {
      return MaterialPageRoute(
        builder: (_) => Simplepkg(),
      );
    } else if (settings.name == "/signup") {
      return MaterialPageRoute(
        builder: (_) => Signup(),
      );
    } else if (settings.name == "/login") {
      return MaterialPageRoute(builder: (_) => Loginpage());
    } else if (settings.name == "/homePage") {
      if (args is UserData)
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  userdata: args,
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
