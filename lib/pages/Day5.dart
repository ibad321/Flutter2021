import 'package:flutter/material.dart';

class Day5 extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day5"),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          ),
           Align(
             alignment: Alignment.topRight,
             child: Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
                     ),
           ),
           Align(
             alignment: Alignment.center,
             child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
             ),
             ),

             Positioned(
               top: 70,
               bottom: 70,
               left: 70,
               right: 70,
               child: Container(
                 width: 100,
                 height: 100,
                 color: Colors.teal,
                 child: Icon(Icons.call,size: 100,),
               ),
             ),  
        ],
             
      ),
    );
  }
}