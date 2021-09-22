import 'package:flutter/material.dart';
class Rwcolmn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day3"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
        Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.yellow,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,

          children: [
             Container(
          width: 200,
          height: 200,
          color: Colors.red,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.yellow,
        ),
          ],

        )
      ],),
    );
  }
}