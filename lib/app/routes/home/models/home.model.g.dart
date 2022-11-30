// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExternalBanner _$ExternalBannerFromJson(Map<String, dynamic> json) =>
    ExternalBanner()
      ..message = json['message'] as String?
      ..code = json['code'] as int?
      ..data = (json['data'] as List<dynamic>?)
          ?.map((e) => ExternalBannerItem.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ExternalBannerToJson(ExternalBanner instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

ExternalBannerItem _$ExternalBannerItemFromJson(Map<String, dynamic> json) =>
    ExternalBannerItem()
      ..bannerId = json['bannerId'] as String?
      ..pic = json['pic'] as String?
      ..titleColor = json['titleColor'] as String?
      ..targetId = json['targetId'] as int?
      ..targetType = json['targetType'] as int?
      ..typeTitle = json['typeTitle'] as String?
      ..encodeId = json['encodeId'] as String?
      ..url = json['url'] as String?;

Map<String, dynamic> _$ExternalBannerItemToJson(ExternalBannerItem instance) =>
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

MusicWrap _$MusicWrapFromJson(Map<String, dynamic> json) => MusicWrap()
  ..message = json['message'] as String?
  ..code = json['code'] as int?
  ..data = json['data'] == null
      ? null
      : MusicStage.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$MusicWrapToJson(MusicWrap instance) => <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

MusicStage _$MusicStageFromJson(Map<String, dynamic> json) => MusicStage()
  ..hasMore = json['hasMore'] as bool?
  ..blocks = (json['blocks'] as List<dynamic>?)
      ?.map((e) => MusicItem.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$MusicStageToJson(MusicStage instance) =>
    <String, dynamic>{
      'hasMore': instance.hasMore,
      'blocks': instance.blocks,
    };

MusicItem _$MusicItemFromJson(Map<String, dynamic> json) => MusicItem()
  ..blockCode = json['blockCode'] as String?
  ..showType = json['showType'] as String?
  ..dislikeShowType = json['dislikeShowType'] as int?
  ..canClose = json['canClose'] as bool?
  ..blockStyle = json['blockStyle'] as int?
  ..canFeedback = json['canFeedback'] as bool?
  ..extInfo = json['extInfo']
  ..creatives = (json['creatives'] as List<dynamic>?)
      ?.map((e) => CreativesItem.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$MusicItemToJson(MusicItem instance) => <String, dynamic>{
      'blockCode': instance.blockCode,
      'showType': instance.showType,
      'dislikeShowType': instance.dislikeShowType,
      'canClose': instance.canClose,
      'blockStyle': instance.blockStyle,
      'canFeedback': instance.canFeedback,
      'extInfo': instance.extInfo,
      'creatives': instance.creatives,
    };

CreativesItem _$CreativesItemFromJson(Map<String, dynamic> json) =>
    CreativesItem()
      ..creativeType = json['creativeType'] as String?
      ..creativeId = json['creativeId'] as String?
      ..action = json['action'] as String?
      ..actionType = json['actionType'] as String?
      ..position = json['position'] as int?
      ..alg = json['alg'] as String?
      ..uiElement = json['uiElement'] == null
          ? null
          : MusicUIElement.fromJson(json['uiElement'] as Map<String, dynamic>)
      ..resources = (json['resources'] as List<dynamic>?)
          ?.map((e) => ResourcesItem.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CreativesItemToJson(CreativesItem instance) =>
    <String, dynamic>{
      'creativeType': instance.creativeType,
      'creativeId': instance.creativeId,
      'action': instance.action,
      'actionType': instance.actionType,
      'position': instance.position,
      'alg': instance.alg,
      'uiElement': instance.uiElement,
      'resources': instance.resources,
    };

ResourcesItem _$ResourcesItemFromJson(Map<String, dynamic> json) =>
    ResourcesItem()
      ..resourceType = json['resourceType'] as String?
      ..resourceId = json['resourceId'] as String?
      ..resourceUrl = json['resourceUrl'] as String?
      ..action = json['action'] as String?
      ..actionType = json['actionType'] as String?
      ..vaild = json['vaild'] as bool?
      ..alg = json['alg'] as String?
      ..uiElement = json['uiElement'] == null
          ? null
          : MusicUIElement.fromJson(json['uiElement'] as Map<String, dynamic>)
      ..resourceExtInfo = json['resourceExtInfo'] == null
          ? null
          : ResourceExtInfo.fromJson(
              json['resourceExtInfo'] as Map<String, dynamic>);

Map<String, dynamic> _$ResourcesItemToJson(ResourcesItem instance) =>
    <String, dynamic>{
      'resourceType': instance.resourceType,
      'resourceId': instance.resourceId,
      'resourceUrl': instance.resourceUrl,
      'action': instance.action,
      'actionType': instance.actionType,
      'vaild': instance.vaild,
      'alg': instance.alg,
      'uiElement': instance.uiElement,
      'resourceExtInfo': instance.resourceExtInfo,
    };

MusicUIElement _$MusicUIElementFromJson(Map<String, dynamic> json) =>
    MusicUIElement()
      ..subTitle = json['subTitle'] == null
          ? null
          : UiElementTitle.fromJson(json['subTitle'] as Map<String, dynamic>)
      ..mainTitle = json['mainTitle'] == null
          ? null
          : UiElementTitle.fromJson(json['mainTitle'] as Map<String, dynamic>)
      ..button = json['button'] == null
          ? null
          : UiElementButton.fromJson(json['button'] as Map<String, dynamic>)
      ..image = json['image'] == null
          ? null
          : UiElementImage.fromJson(json['image'] as Map<String, dynamic>)
      ..labelText = json['labelText'] == null
          ? null
          : UiElementLabelText.fromJson(
              json['labelText'] as Map<String, dynamic>)
      ..rcmdShowType = json['rcmdShowType'] as String?
      ..labelTexts = (json['labelTexts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..labelType = json['labelType'] as String?;

Map<String, dynamic> _$MusicUIElementToJson(MusicUIElement instance) =>
    <String, dynamic>{
      'subTitle': instance.subTitle,
      'mainTitle': instance.mainTitle,
      'button': instance.button,
      'image': instance.image,
      'labelText': instance.labelText,
      'rcmdShowType': instance.rcmdShowType,
      'labelTexts': instance.labelTexts,
      'labelType': instance.labelType,
    };

UiElementTitle _$UiElementTitleFromJson(Map<String, dynamic> json) =>
    UiElementTitle()
      ..title = json['title'] as String?
      ..titleImgUrl = json['titleImgUrl'] as String?
      ..titleDesc = json['titleDesc'] as String?;

Map<String, dynamic> _$UiElementTitleToJson(UiElementTitle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'titleImgUrl': instance.titleImgUrl,
      'titleDesc': instance.titleDesc,
    };

UiElementButton _$UiElementButtonFromJson(Map<String, dynamic> json) =>
    UiElementButton()
      ..action = json['action'] as String?
      ..actionType = json['actionType'] as String?
      ..text = json['text'] as String?
      ..iconUrl = json['iconUrl'] as String?;

Map<String, dynamic> _$UiElementButtonToJson(UiElementButton instance) =>
    <String, dynamic>{
      'action': instance.action,
      'actionType': instance.actionType,
      'text': instance.text,
      'iconUrl': instance.iconUrl,
    };

UiElementImage _$UiElementImageFromJson(Map<String, dynamic> json) =>
    UiElementImage()..imageUrl = json['imageUrl'] as String?;

Map<String, dynamic> _$UiElementImageToJson(UiElementImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
    };

UiElementLabelText _$UiElementLabelTextFromJson(Map<String, dynamic> json) =>
    UiElementLabelText()
      ..textColor = json['textColor'] as String?
      ..text = json['text'] as String?;

Map<String, dynamic> _$UiElementLabelTextToJson(UiElementLabelText instance) =>
    <String, dynamic>{
      'textColor': instance.textColor,
      'text': instance.text,
    };

ResourceExtInfo _$ResourceExtInfoFromJson(Map<String, dynamic> json) =>
    ResourceExtInfo()
      ..startTime = (json['startTime'] as num?)?.toDouble()
      ..endTime = (json['endTime'] as num?)?.toDouble()
      ..playCount = json['playCount'] as int?
      ..highQuality = json['highQuality'] as bool?
      ..specialType = json['specialType'] as int?
      ..alias = json['alias'] as String?;

Map<String, dynamic> _$ResourceExtInfoToJson(ResourceExtInfo instance) =>
    <String, dynamic>{
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'playCount': instance.playCount,
      'highQuality': instance.highQuality,
      'specialType': instance.specialType,
      'alias': instance.alias,
    };
