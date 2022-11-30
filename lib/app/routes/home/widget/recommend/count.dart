import 'package:flt_proj/utils/math.util.dart';
import 'package:flutter/material.dart';

class PlayCountView extends StatelessWidget {
  final int? count;

  const PlayCountView({super.key, this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 4, right: 4),
      margin: const EdgeInsets.only(right: 4, top: 3),
      decoration: BoxDecoration(
          color: const Color(0xFF848484).withOpacity(0.5),
          borderRadius: const BorderRadius.all(Radius.circular(15.0))),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 19,
          ),
          Text(MathUtil.getPlayNumberStr(count ?? 0),
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Color(0xFFdddddd), fontSize: 12))
        ],
      ),
    );
  }
}
