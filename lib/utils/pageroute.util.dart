import 'package:flutter/material.dart';
import 'package:flt_proj/utils/animation.util.dart';

class PageRouteUtil {
  static PageRouteBuilder pushAnimation({
    String? named, Widget? page, 
    int? duration = 700
  }) {
    RoutePageBuilder _pageBuilder = ((BuildContext context, Animation<double> animation,  Animation<double> secondaryAnimation) => page!);
    RouteTransitionsBuilder _transitionBuilder = ((
      BuildContext context, 
      Animation<double> animation, 
      Animation<double> secondaryAnimation, 
      Widget widget
    ) {
      switch (named) {
        case 'fade': return AnimationUtil.tweenFaded(animation, widget);
        default: return AnimationUtil.transition(animation, widget);
      }
    });

    if (duration != null) {
      return PageRouteBuilder(
        pageBuilder: _pageBuilder,
        opaque: true,
        transitionDuration: Duration(milliseconds: duration),
        reverseTransitionDuration: Duration(milliseconds: duration),
        transitionsBuilder: _transitionBuilder,
      );
    }
    return PageRouteBuilder(
      pageBuilder: _pageBuilder,
      transitionsBuilder: _transitionBuilder
    );
  }
}