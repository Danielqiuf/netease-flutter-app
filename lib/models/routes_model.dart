import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'routes_model.g.dart';

@JsonSerializable()
class RoutesModel {
  RoutesModel({this.routePath, this.routeEntry});

  @JsonKey(name: "route_path")
  String? routePath;

  @JsonKey(name: "route_entry")
  dynamic routeEntry;


  factory RoutesModel.fromJson(Map<String, dynamic> json) => _$RoutesModelFromJson(json);

  Map<String, dynamic> toJson() => _$RoutesModelToJson(this);
}

