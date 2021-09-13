import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Day1"),
        ),
        // ignore: avoid_unnecessary_containers
        // ignore: sized_box_for_whitespace
        body: Center(
          // ignore: sized_box_for_whitespace
          child: Container(
            alignment: Alignment.center,
            height: 90,
            width: 160,
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 100),
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(50))),
            child: const Text(
              "Humdam",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  backgroundColor: Colors.orange,
                  decoration: TextDecoration.overline),
            ),
          ),
        ));
  }
}
