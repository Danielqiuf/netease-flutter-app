import 'package:flt_proj/app/routes/router_keys.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late final Map<String, dynamic> _routes;

  AppRouter(): _routes = {} {
    _routes.addAll(mapForBuilder());
  }

  Route<dynamic>? generateRoute (RouteSettings settings) {  
    final Object? arguments = settings.arguments;
    final String? name = settings.name;
    final dynamic pageContentBuilder = _routes[name];
  print('routear>>>${pageContentBuilder.runtimeType}');
    if (pageContentBuilder != null && pageContentBuilder is PageContentRouteBuilder) {
      return pageContentBuilder(arguments);
    }
    if (pageContentBuilder != null ) {
      return MaterialPageRoute(builder: ((context) => pageContentBuilder(context, arguments: arguments)));
    }
  return null;
  }

}