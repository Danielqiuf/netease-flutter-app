import 'package:flt_proj/app/routes/home/cubit/home_cubit.dart';
import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flt_proj/wigets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

   Widget buildBody() {
    return BlocBuilder<HomeBloc, int>(builder: (context, count) =>  Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
            CupertinoButton(
              color: ColorThemes.colorBlack,
              onPressed: () {
                Navigator.of(context).pushNamed('/person');
              },
              pressedOpacity: 0.6,
              child: const Text('跳转到个人中心',
                  style: TextStyle(color: ColorThemes.colorWhite)),
            ),
          ],
        ),
      ));
  }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<HomeBloc>(context);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        elevation: 0,
        leading: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              print('tap');
            },
            child: const SizedBox(
              width: 44,
              height: 44,
              child: Icon(
                Icons.menu,
                color: ColorThemes.colorWhite,
              ),
            )),
        title: const SearchWidget(),
        actions: <Widget>[
          SizedBox(
            width: 44,
            height: 44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.queue_music, color: ColorThemes.colorWhite)
              ],
            ),
          )
        ],
        backgroundColor: ColorThemes.colorBlack,
      ),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () { 
          print('add${bloc.add}');
          bloc.add(HomeIncrementPressed());
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}