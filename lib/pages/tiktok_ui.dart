import 'package:flutter/material.dart';

class Tiktokui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            top: 35,
            right: 15,
            left: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.close),
                Row(
                  children: [Icon(Icons.play_arrow), Text("Sound")],
                ),
                Column(
                  children: [Icon(Icons.filter), Text("Flip")],
                )
              ],
            )),
        Positioned(
          right: 10,
          top: 90,
          child: Column(
            children: [Icon(Icons.speed), Text("speed")],
          ),
        ),
        Positioned(
          right: 9,
          top: 150,
          child: Column(
            children: [Icon(Icons.doorbell), Text("Beauty")],
          ),
        ),
        Positioned(
          right: 17,
          top: 210,
          child: Column(
            children: [Icon(Icons.filter), Text("filter")],
          ),
        ),
        Positioned(
          right: 16,
          top: 270,
          child: Column(
            children: [Icon(Icons.timeline), Text("Time")],
          ),
        ),
        Positioned(
          right: 17,
          top: 330,
          child: Column(
            children: [Icon(Icons.flash_auto), Text("Flash")],
          ),
        ),
        Positioned(
            bottom: 20,
            left: 15,
            right: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Icon(Icons.image)),
                    Text("Effect"),
                  ],
                ),
                Container(
                  height: 80,
                  width: 80,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(.6),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.black, width: 3)),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Icon(Icons.upload)),
                    Text("Upload"),
                  ],
                )
              ],
            ))
      ],
    ));
  }
}
