// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg_localized_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLegLocalizedValues _$RouteLegLocalizedValuesFromJson(
        Map<String, dynamic> json) =>
    RouteLegLocalizedValues(
      distance: json['distance'] == null
          ? null
          : LocalizedText.fromJson(json['distance'] as Map<String, dynamic>),
      duration: json['duration'] == null
          ? null
          : LocalizedText.fromJson(json['duration'] as Map<String, dynamic>),
      staticDuration: json['staticDuration'] == null
          ? null
          : LocalizedText.fromJson(
              json['staticDuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteLegLocalizedValuesToJson(
        RouteLegLocalizedValues instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'staticDuration': instance.staticDuration,
    };
