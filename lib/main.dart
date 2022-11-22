import 'package:flt_proj/app/routes/home/view/home_page.dart';
import 'package:flt_proj/app/routes/routes.dart';
import 'package:flt_proj/wigets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});
  @override
  _AppMain createState() => _AppMain();
}

class _AppMain extends State<App> {
  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _router.onGenerateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/',
      // routes: {
      //   PersonRoutePage.routeName: (ctx) => PersonRoutePage(),
      //   AppSearchPage.routeName: (ctx) => AppSearchPage()
      // },
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }
}


