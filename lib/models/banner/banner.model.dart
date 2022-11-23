import 'package:json_annotation/json_annotation.dart';

part 'banner.model.g.dart';

@JsonSerializable()
class CommonModelBanner {
  CommonModelBanner();

  factory CommonModelBanner.fromJson(Map<String, dynamic> json) => _$CommonModelBannerFromJson(json);

  toJson() => _$CommonModelBannerToJson(this);
}