// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_localized_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLocalizedValues _$RouteLocalizedValuesFromJson(
        Map<String, dynamic> json) =>
    RouteLocalizedValues(
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
      transitFare: json['transitFare'] == null
          ? null
          : LocalizedText.fromJson(json['transitFare'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RouteLocalizedValuesToJson(
        RouteLocalizedValues instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'staticDuration': instance.staticDuration,
      'transitFare': instance.transitFare,
    };
