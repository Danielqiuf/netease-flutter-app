// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalBanner _$ExternalBannerFromJson(Map<String, dynamic> json) =>
    ExternalBanner()
      ..bannerId = json['bannerId'] as String?
      ..pic = json['pic'] as String?
      ..titleColor = json['titleColor'] as String?
      ..targetId = json['targetId'] as int?
      ..targetType = json['targetType'] as int?
      ..typeTitle = json['typeTitle'] as String?
      ..encodeId = json['encodeId'] as String?
      ..url = json['url'] as String?;

Map<String, dynamic> _$ExternalBannerToJson(ExternalBanner instance) =>
    <String, dynamic>{
      'bannerId': instance.bannerId,
      'pic': instance.pic,
      'titleColor': instance.titleColor,
      'targetId': instance.targetId,
      'targetType': instance.targetType,
      'typeTitle': instance.typeTitle,
      'encodeId': instance.encodeId,
      'url': instance.url,
    };
