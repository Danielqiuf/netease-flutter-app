import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flt_proj/models/common/common.model.dart';

part 'home.model.g.dart';

@JsonSerializable()
class ExternalBanner extends CommonModel<List<ExternalBannerItem>> {
  ExternalBanner();

  factory ExternalBanner.fromJson(Map<String, dynamic> json) => _$ExternalBannerFromJson(json);

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

  factory ExternalBannerItem.fromJson(Map<String, dynamic> json) => _$ExternalBannerItemFromJson(json);

  toJson() => _$ExternalBannerItemToJson(this);
}