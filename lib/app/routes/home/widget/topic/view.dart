import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class TopicView extends StatefulWidget {
  const TopicView({Key? key}): super(key: key);

  @override
  TopicViewState createState() => TopicViewState();
}
class TopicViewState extends State<TopicView> {

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    final double itemSize = size - 15 - 10 - 30;

    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      margin: const EdgeInsets.only(bottom: 10),
      color: ColorThemes.foregoundColor,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 0, 
            child: Image.asset("assets/images/toplist_bg.png")),
          // Positioned(
          //   top: 0,
          //   right: 20, 
          //   child: Image.asset("assets/images/cm8_home_toplist_bottom_bg~iphone.png")),
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [],
          // )
        ],
      ),
    );
  }
}