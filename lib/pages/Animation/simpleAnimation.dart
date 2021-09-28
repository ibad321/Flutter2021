import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_icons/flutter_icons.dart';

class SimpleAnim extends StatefulWidget {
  @override
  _SimpleAnimState createState() => _SimpleAnimState();
}

class _SimpleAnimState extends State<SimpleAnim>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;

  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
        final animationCurve =CurvedAnimation(curve: Curves.easeInOutExpo,reverseCurve: Curves.easeIn,parent: _animationController);
    _animation =
        Tween<double>(begin: 5, end: 10).animate(animationCurve)
          ..addListener(() {
            setState(() {});
          })
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _animationController.forward();
            }
          });
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Transform.scale(
        scale: _animation.value,
        // offset: Offset(_animation.value,_animation.value),tranform.scale
        // angle: _animation.value, tranfom.rotate
        child: Center(
          child: Icon(FontAwesome.heart_o),
        ),
      ),
    );
  }
}
