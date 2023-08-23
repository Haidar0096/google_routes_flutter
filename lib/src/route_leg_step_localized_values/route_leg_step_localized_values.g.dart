// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg_step_localized_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLegStepLocalizedValues _$RouteLegStepLocalizedValuesFromJson(
        Map<String, dynamic> json) =>
    RouteLegStepLocalizedValues(
      distance: json['distance'] == null
          ? null
          : LocalizedText.fromJson(json['distance'] as Map<String, dynamic>),
      staticDuration: json['staticDuration'] == null
          ? null
          : LocalizedText.fromJson(
              json['staticDuration'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteLegStepLocalizedValuesToJson(
        RouteLegStepLocalizedValues instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'staticDuration': instance.staticDuration,
    };
