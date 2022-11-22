// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoutesModel _$RoutesModelFromJson(Map<String, dynamic> json) => RoutesModel()
  ..routePath = json['route_path'] as String?
  ..routeEntry = json['route_entry'];

Map<String, dynamic> _$RoutesModelToJson(RoutesModel instance) =>
    <String, dynamic>{
      'route_path': instance.routePath,
      'route_entry': instance.routeEntry,
    };
