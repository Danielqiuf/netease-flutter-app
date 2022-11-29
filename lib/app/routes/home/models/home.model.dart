import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flt_proj/models/common/common.model.dart';

part 'home.model.g.dart';

@JsonSerializable()
class ExternalBanner extends CommonModel<List<ExternalBannerItem>> {
  ExternalBanner();

  factory ExternalBanner.fromJson(Map<String, dynamic> json) =>
      _$ExternalBannerFromJson(json);

  toJson() => _$ExternalBannerToJson(this);
}

@JsonSerializable()
class ExternalBannerItem {
  ExternalBannerItem();

  String? bannerId;
  String? pic;
  String? titleColor;
  int? targetId;

  int? targetType;
  String? typeTitle;
  String? encodeId;
  String? url;

  Color bgColor() {
    return Colors.red;
  }

  factory ExternalBannerItem.fromJson(Map<String, dynamic> json) =>
      _$ExternalBannerItemFromJson(json);

  toJson() => _$ExternalBannerItemToJson(this);
}

class ListTitle {
  static const List<String> list = [
    "每日推荐",
    "私人FM",
    "歌单",
    "排行榜",
    "有声书",
    "数字专辑",
    "直播",
    "关注新歌",
    "歌房"
  ];

  static const List<IconData> icons = [
    IconData(0xe729, fontFamily: 'iconfont'),
    IconData(0xe604, fontFamily: 'iconfont'),
    IconData(0xe61b, fontFamily: 'iconfont'),
    IconData(0xe782, fontFamily: 'iconfont'),
    IconData(0xe600, fontFamily: 'iconfont'),
    IconData(0xe60a, fontFamily: 'iconfont'),
    IconData(0xe65b, fontFamily: 'iconfont'),
    IconData(0xe616, fontFamily: 'iconfont'),
    IconData(0xe713, fontFamily: 'iconfont')
  ];

  static Widget customCircleWidget(String title, IconData iconData) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              color: Color(0xFFFEF5F4)),
          child: Icon(
            iconData,
            color: Colors.red,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            title,
            style: const TextStyle(fontSize: 13, color: Color(0xFF999999)),
          ),
        )
      ],
    );
  }
}
