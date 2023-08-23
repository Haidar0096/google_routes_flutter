// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLeg _$RouteLegFromJson(Map<String, dynamic> json) => RouteLeg(
      distanceMeters: json['distanceMeters'] as int?,
      duration: json['duration'] as String?,
      staticDuration: json['staticDuration'] as String?,
      polyline: json['polyline'] == null
          ? null
          : Polyline.fromJson(json['polyline'] as Map<String, dynamic>),
      startLocation: json['startLocation'] == null
          ? null
          : Location.fromJson(json['startLocation'] as Map<String, dynamic>),
      endLocation: json['endLocation'] == null
          ? null
          : Location.fromJson(json['endLocation'] as Map<String, dynamic>),
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => RouteLegStep.fromJson(e as Map<String, dynamic>))
          .toList(),
      travelAdvisory: json['travelAdvisory'] == null
          ? null
          : RouteLegTravelAdvisory.fromJson(
              json['travelAdvisory'] as Map<String, dynamic>),
      localizedValues: json['localizedValues'] == null
          ? null
          : RouteLegLocalizedValues.fromJson(
              json['localizedValues'] as Map<String, dynamic>),
      stepsOverview: json['stepsOverview'] == null
          ? null
          : StepsOverview.fromJson(
              json['stepsOverview'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteLegToJson(RouteLeg instance) => <String, dynamic>{
      'distanceMeters': instance.distanceMeters,
      'duration': instance.duration,
      'staticDuration': instance.staticDuration,
      'polyline': instance.polyline,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'steps': instance.steps,
      'travelAdvisory': instance.travelAdvisory,
      'localizedValues': instance.localizedValues,
      'stepsOverview': instance.stepsOverview,
    };
