import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flt_proj/models/common/common.model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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

@JsonSerializable()
class MusicWrap extends CommonModel<MusicStage> {
  MusicWrap();

  factory MusicWrap.fromJson(Map<String, dynamic> json) =>
      _$MusicWrapFromJson(json);

  toJson() => _$MusicWrapToJson(this);
}

@JsonSerializable()
class MusicStage {
  MusicStage();

  bool? hasMore;
  List<MusicItem>? blocks;

  factory MusicStage.fromJson(Map<String, dynamic> json) =>
      _$MusicStageFromJson(json);

  toJson() => _$MusicStageToJson(this);
}

@JsonSerializable()
class MusicItem {
  MusicItem();

  String? blockCode;
  String? showType;
  int? dislikeShowType;
  bool? canClose;
  int? blockStyle;
  bool? canFeedback;

  dynamic extInfo;
  List<CreativesItem>? creatives;

  @JsonKey(ignore: true)
  RefreshController controller = RefreshController();

  factory MusicItem.fromJson(Map<String, dynamic> json) =>
      _$MusicItemFromJson(json);

  toJson() => _$MusicItemToJson(this);
}

@JsonSerializable()
class CreativesItem {
  CreativesItem();

  String? creativeType;
  String? creativeId;
  String? action;
  String? actionType;
  int? position;

  String? alg;
  MusicUIElement? uiElement;
  List<ResourcesItem>? resources;

  factory CreativesItem.fromJson(Map<String, dynamic> json) =>
      _$CreativesItemFromJson(json);

  toJson() => _$CreativesItemToJson(this);
}

@JsonSerializable()
class ResourcesItem {
  ResourcesItem();

  String? resourceType;
  String? resourceId;
  String? resourceUrl;
  String? action;
  String? actionType;
  bool? vaild;
  String? alg;

  MusicUIElement? uiElement;

  ResourceExtInfo? resourceExtInfo;

  factory ResourcesItem.fromJson(Map<String, dynamic> json) =>
      _$ResourcesItemFromJson(json);

  toJson() => _$ResourcesItemToJson(this);
}

@JsonSerializable()
class MusicUIElement {
  MusicUIElement();

  UiElementTitle? subTitle;
  UiElementTitle? mainTitle;
  UiElementButton? button;
  UiElementImage? image;
  UiElementLabelText? labelText;
  String? rcmdShowType;
  List<String>? labelTexts;
  String? labelType;

  factory MusicUIElement.fromJson(Map<String, dynamic> json) =>
      _$MusicUIElementFromJson(json);

  toJson() => _$MusicUIElementToJson(this);
}

@JsonSerializable()
class UiElementTitle {
  UiElementTitle();

  String? title;
  String? titleImgUrl;
  String? titleDesc;

  factory UiElementTitle.fromJson(Map<String, dynamic> json) =>
      _$UiElementTitleFromJson(json);

  toJson() => _$UiElementTitleToJson(this);
}

@JsonSerializable()
class UiElementButton {
  UiElementButton();

  String? action;
  String? actionType;
  String? text;
  String? iconUrl;

  factory UiElementButton.fromJson(Map<String, dynamic> json) =>
      _$UiElementButtonFromJson(json);

  toJson() => _$UiElementButtonToJson(this);
}

@JsonSerializable()
class UiElementImage {
  UiElementImage();

  String? imageUrl;

  factory UiElementImage.fromJson(Map<String, dynamic> json) =>
      _$UiElementImageFromJson(json);

  toJson() => _$UiElementImageToJson(this);
}

@JsonSerializable()
class UiElementLabelText {
  UiElementLabelText();

  String? textColor;
  String? text;

  factory UiElementLabelText.fromJson(Map<String, dynamic> json) =>
      _$UiElementLabelTextFromJson(json);

  toJson() => _$UiElementLabelTextToJson(this);
}

@JsonSerializable()
class ResourceExtInfo {
  ResourceExtInfo();

  double? startTime;
  double? endTime;
  int? playCount;
  bool? highQuality;
  int? specialType;
  String? alias;

  factory ResourceExtInfo.fromJson(Map<String, dynamic> json) =>
      _$ResourceExtInfoFromJson(json);

  toJson() => _$ResourceExtInfoToJson(this);
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
              color: Color(0xff381b18)),
          child: Icon(
            iconData,
            color: const Color(0xffcd3f36),
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
