// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizedValues _$LocalizedValuesFromJson(Map<String, dynamic> json) =>
    LocalizedValues(
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

Map<String, dynamic> _$LocalizedValuesToJson(LocalizedValues instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'duration': instance.duration,
      'staticDuration': instance.staticDuration,
      'transitFare': instance.transitFare,
    };
