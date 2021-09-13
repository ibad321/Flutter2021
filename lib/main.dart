import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "flutter cousre 2021",
    home: Scaffold(
        appBar: AppBar(
          title: const Text("Day1"),
        ),
        body: const Center(
          child: Text("Humdam"),
        )),
  ));
}
