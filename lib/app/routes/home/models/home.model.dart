import 'package:json_annotation/json_annotation.dart';

part 'home.model.g.dart';

@JsonSerializable()
class ExternalBanner {
  ExternalBanner();

  String? bannerId;
  String? pic;
  String? titleColor;
  int? targetId;

  int? targetType;
  String? typeTitle;
  String? encodeId;
  String? url;

  factory ExternalBanner.fromJson(Map<String, dynamic> json) => _$ExternalBannerFromJson(json);

  toJson() => _$ExternalBannerToJson(this);
}