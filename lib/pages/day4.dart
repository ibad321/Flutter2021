import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';

class Day4 extends StatelessWidget {
  int age = 30;
  String agee = "my age is";
  double salary = 2345.45;
  bool cool = true;
  num khan = 32222.3222;
  var khann = "khan";
  // Ais ko ham jo b value assign kare ose nature ka hojata hai
  final y = 2333;
  // run time pe jo value assign hote hai
  static const double gravity = 9.8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day4"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
            FontAwesome.amazon,
            size: 100,
            color: Colors.red,
          )),
          Text(" $agee $age,sallary is $salary"),
          Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
