import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flt_proj/app/routes/home/home.dart';
import 'package:flt_proj/app/routes/home/widget/search/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildBody() {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorThemes.colorBlack,
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return const BannerView();
              }
              if (index == 1) {
                return const TopicView();
              }
              return const Text('123132131');
            },
            itemCount: 4,
            physics: const AlwaysScrollableScrollPhysics()));
  }

  @override
  Widget build(BuildContext context) {
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
        title: const SearchView(),
        actions: <Widget>[
          SizedBox(
            width: 44,
            height: 44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/cm6_set_icn_ring_tone~iphone.png',
                  color: ColorThemes.colorWhite,
                )
              ],
            ),
          )
        ],
        backgroundColor: ColorThemes.colorBlack,
      ),
      body: buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
