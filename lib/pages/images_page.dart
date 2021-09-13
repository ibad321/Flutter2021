import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Imagespages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(title: const Text("Day2")),
        body: Center(
          child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(40))),
              child: Image.asset("assets/mkd.jpeg")),
        ));
  }
}
