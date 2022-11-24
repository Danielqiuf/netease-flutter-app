import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flt_proj/app/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const App());
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => HomeBloc())
      ],
      child: MaterialApp(
        onGenerateRoute: _router.generateRoute,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // initialRoute: '/',
        // routes: {
        //   PersonRoutePage.routeName: (ctx) => PersonRoutePage(),
        //   AppSearchPage.routeName: (ctx) => AppSearchPage()
        // },
      ),
    ); 
  }

  @override
  void dispose() {
    super.dispose();
  }
}


