import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flt_proj/wigets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flt_proj/app/routes/home/widget/banner/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


   Widget buildBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: ColorThemes.colorBlack,
      child: ListView.builder(itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const BannerView(),
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '0',
                  style: Theme.of(context).textTheme.headline4,
                ),
                CupertinoButton(
                  color: ColorThemes.colorBlack,
                  onPressed: () {
                  },
                  pressedOpacity: 0.6,
                  child: const Text('跳转到个人中心',
                      style: TextStyle(color: ColorThemes.colorWhite)),
                ),
              ],
            ),
          );
        }
        return Text('111');
      }, itemCount: 4, physics: const AlwaysScrollableScrollPhysics())
    );
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
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}