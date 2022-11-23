import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flt_proj/app/routes/search/search.dart';
import 'package:flt_proj/utils/animation.util.dart';
import 'package:flt_proj/utils/pageroute.util.dart';
import 'package:flutter/material.dart';

class RouterKeys {
  static const homeApp = '/';

  static const searchApp = '/search-app';
}

typedef PageContentBuilder = dynamic Function(BuildContext? context, {Object? arguments});
typedef PageContentRouteBuilder = PageRouteBuilder Function(Object? arguments);

Map<String, dynamic> mapForBuilder() => {
  RouterKeys.homeApp: (context, { arguments }) => const HomePage(),
  RouterKeys.searchApp: (arguments) => PageRouteUtil.pushAnimation(
    named: 'fade',
    duration: 200,
    page: AppSearch(arguments: arguments)
  )
};