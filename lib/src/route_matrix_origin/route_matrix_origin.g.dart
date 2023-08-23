// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_matrix_origin.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteMatrixOrigin _$RouteMatrixOriginFromJson(Map<String, dynamic> json) =>
    RouteMatrixOrigin(
      waypoint: json['waypoint'] == null
          ? null
          : Waypoint.fromJson(json['waypoint'] as Map<String, dynamic>),
      routeModifiers: json['routeModifiers'] == null
          ? null
          : RouteModifiers.fromJson(
              json['routeModifiers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteMatrixOriginToJson(RouteMatrixOrigin instance) =>
    <String, dynamic>{
      'waypoint': instance.waypoint,
      'routeModifiers': instance.routeModifiers,
    };
