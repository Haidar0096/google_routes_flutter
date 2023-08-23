// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Route _$RouteFromJson(Map<String, dynamic> json) => Route(
      routeLabels: (json['routeLabels'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RouteLabelEnumMap, e))
          .toList(),
      legs: (json['legs'] as List<dynamic>?)
          ?.map((e) => RouteLeg.fromJson(e as Map<String, dynamic>))
          .toList(),
      distanceMeters: json['distanceMeters'] as int?,
      duration: json['duration'] as String?,
      staticDuration: json['staticDuration'] as String?,
      polyline: json['polyline'] == null
          ? null
          : Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
      description: json['description'] as String?,
      warnings: (json['warnings'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      viewport: json['viewport'] == null
          ? null
          : Viewport.fromJson(json['viewport'] as Map<String, dynamic>),
      travelAdvisory: json['travelAdvisory'] == null
          ? null
          : RouteTravelAdvisory.fromJson(
              json['travelAdvisory'] as Map<String, dynamic>),
      optimizedIntermediateWaypointIndex:
          (json['optimizedIntermediateWaypointIndex'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      localizedValues: json['localizedValues'] == null
          ? null
          : RouteLocalizedValues.fromJson(
              json['localizedValues'] as Map<String, dynamic>),
      routeToken: json['routeToken'] as String?,
    );

Map<String, dynamic> _$RouteToJson(Route instance) => <String, dynamic>{
      'routeLabels': instance.routeLabels,
      'legs': instance.legs,
      'distanceMeters': instance.distanceMeters,
      'duration': instance.duration,
      'staticDuration': instance.staticDuration,
      'polyline': instance.polyline,
      'description': instance.description,
      'warnings': instance.warnings,
      'viewport': instance.viewport,
      'travelAdvisory': instance.travelAdvisory,
      'optimizedIntermediateWaypointIndex':
          instance.optimizedIntermediateWaypointIndex,
      'localizedValues': instance.localizedValues,
      'routeToken': instance.routeToken,
    };

const _$RouteLabelEnumMap = {
  RouteLabel.routeLabelUnspecified: 'ROUTE_LABEL_UNSPECIFIED',
  RouteLabel.defaultRoute: 'DEFAULT_ROUTE',
  RouteLabel.defaultRouteAlternate: 'DEFAULT_ROUTE_ALTERNATE',
  RouteLabel.fuelEfficient: 'FUEL_EFFICIENT',
};
