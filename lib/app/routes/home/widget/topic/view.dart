import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flt_proj/app/routes/home/models/home.model.dart' show ListTitle;

class TopicView extends StatefulWidget {
  const TopicView({Key? key}) : super(key: key);

  @override
  TopicViewState createState() => TopicViewState();
}

class TopicViewState extends State<TopicView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        color: ColorThemes.foregoundColor,
        border:
            Border(bottom: BorderSide(color: ColorThemes.divider, width: 1)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 20),
        child: Row(
          children: ListTitle.list.map((e) {
            int index = ListTitle.list.indexOf(e);
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 0 : 27),
              child: GestureDetector(
                onTap: () {
                  print('taptaptap>>>');
                },
                child: ListTitle.customCircleWidget(e, ListTitle.icons[index]),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
