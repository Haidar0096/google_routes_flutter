// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_matrix_destination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteMatrixDestination _$RouteMatrixDestinationFromJson(
        Map<String, dynamic> json) =>
    RouteMatrixDestination(
      waypoint: json['waypoint'] == null
          ? null
          : Waypoint.fromJson(json['waypoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteMatrixDestinationToJson(
        RouteMatrixDestination instance) =>
    <String, dynamic>{
      'waypoint': instance.waypoint,
    };
