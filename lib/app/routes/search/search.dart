import 'package:flt_proj/app/stores/search_fields.dart';
import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class AppSearch extends StatefulWidget {
  AppSearch({ Key? key, this.arguments }): super(key: key);

  final Object? arguments;

  @override
  AppSearchPage createState() => AppSearchPage();
}
class AppSearchPage extends State<AppSearch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('argumentsss>>>${widget.arguments}');
    return Scaffold(
      backgroundColor: ColorThemes.colorBlack,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorThemes.foregoundColor,
        titleSpacing: 0,
        title: SearchFieldsWidget(
          hitText: '我们的决心永远在一起~',
          onSubmit: (String text) {
            print('>>>>>suibmit->$text');
          },
        ),
        actions: [
          GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {},
              child: Container(
                width: 44,
                height: 44,
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.center,
                child: Text(
                  '搜索',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: ColorThemes.colorWhite,
                      ),
                ),
              ))
        ],
      ),
    );
  }
}
