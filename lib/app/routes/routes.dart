import 'package:flt_proj/app/routes/home/view/home_page.dart';
import 'package:flt_proj/app/routes/home/cubit/home_cubit.dart';
import 'package:flt_proj/app/routes/search/search.dart';
import 'package:flt_proj/utils/animation.util.dart';
import 'package:flt_proj/utils/pageroute.util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Transiton {

}
class AppRouter {
  final _bloc = HomeBloc();


  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(value: _bloc, child: const HomePage()),
        );
      case '/search-app':
        return PageRouteUtil.pushAnimation(
          named: 'fade',
          page: const AppSearchPage(),
          duration: 140, 
        );
      default:
        return null;
    }
  }

  void dispose() {
    _bloc.close();
  }
}