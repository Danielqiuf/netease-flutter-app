import 'package:flutter/material.dart';

class AnimationUtil {

  static transition(Animation<double> animation, Widget widget) {
    return SlideTransition(position: Tween<Offset>(
      begin: const Offset(1, 0),
      end: const Offset(0, 0)
    ).animate(animation), child: widget);
  }

  static tweenFaded(Animation<double> animation, Widget widget, { int duration = 400 }) {
    return FadeTransition(opacity: Tween(
      begin: 0.0,
      end: 1.0
    ).animate(animation), child: widget);
  }
}