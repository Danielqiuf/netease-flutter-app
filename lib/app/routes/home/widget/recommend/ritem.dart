import 'package:flt_proj/app/routes/home/models/home.model.dart';
import 'package:flt_proj/app/routes/home/widget/recommend/count.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class RItemView extends StatefulWidget {
  final CreativesItem? item;
  final double? size;

  RItemView({super.key, this.item, this.size});

  @override
  RItemViewState createState() => RItemViewState();
}

class RItemViewState extends State<RItemView> {
  String title = '';
  int index = 0;

  @override
  void initState() {
    super.initState();
    if (widget.item?.resources?.first.uiElement?.mainTitle?.title != null) {
      title = widget.item!.resources!.first.uiElement!.mainTitle!.title!;
    }
    print('title>>>>$title');
  }

  @override
  Widget build(BuildContext context) {
    final url = widget.item?.resources?.first.uiElement?.image?.imageUrl;
    final count = widget.item?.resources?.first.resourceExtInfo?.playCount;
    // print('www>>>${json.encode(widget.item?.resources?.first)}');
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: widget.size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                if (url != null)
                  Container(
                    width: widget.size,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6.0))),
                    child: Image.network(url,
                        width: widget.size, height: widget.size),
                  ),
                if (count != null)
                  Container(
                    width: widget.size,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        PlayCountView(
                          count: count,
                        )
                      ],
                    ),
                  )
              ],
            ),
            Container(
              height: 42,
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                title,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: const Color(0xFFdddddd)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
