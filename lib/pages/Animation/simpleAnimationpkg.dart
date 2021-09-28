import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum properties { x, y }

class Simplepkg extends StatelessWidget {
  final _tween = TimelineTween<properties>()
    ..addScene(begin: 0.seconds, duration: 1.seconds)
        .animate(properties.x, tween: (-200.0).tweenTo(100.0))
    ..addScene(begin: 1.seconds, duration: 1.seconds)
        .animate(properties.y, tween: (-200.0).tweenTo(100.0))
        ..addScene(begin: 2.seconds,duration: 1.seconds).animate(properties.x,tween: (100.0).tweenTo(-100.0))
        ..addScene(begin: 3.seconds,duration: 1.seconds).animate(properties.y,tween: (100.0).tweenTo(-100));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: LoopAnimation<TimelineValue<properties>>(
          tween: _tween,
          duration: Duration(seconds:4),
          builder: (contex, child, value) {
            return Transform.translate(
              offset: Offset(value.get(properties.x), value.get(properties.y)),

              // offset: Offset(_animation.value,_animation.value),tranform.scale
              // angle: _animation.value, tranfom.rotate
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/bird.png")),
              ),
            );
          }),
    ));
  }
}
