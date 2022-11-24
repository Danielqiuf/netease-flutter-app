import 'package:flt_proj/app/theme/my_colors.dart';
import 'package:flutter/material.dart';

class TopicView extends StatelessWidget {

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
          
        ],
      ),
    );
  }
}