import 'package:flt_proj/app/routes/home/view/home_page.dart';
import 'package:flt_proj/app/routes/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  final _bloc = HomeBloc();

  Route? onGenerateRoute(RouteSettings settings) {
    print('gegege${settings.name}');
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(value: _bloc, child: const HomePage())
        );
      default:
        return null;
    }
  }

  void dispose() {
    _bloc.close();
  }
}