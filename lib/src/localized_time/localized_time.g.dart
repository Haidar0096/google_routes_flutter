// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocalizedTime _$LocalizedTimeFromJson(Map<String, dynamic> json) =>
    LocalizedTime(
      time: json['time'] == null
          ? null
          : LocalizedText.fromJson(json['time'] as Map<String, dynamic>),
      timeZone: json['timeZone'] as String?,
    );

Map<String, dynamic> _$LocalizedTimeToJson(LocalizedTime instance) =>
    <String, dynamic>{
      'time': instance.time,
      'timeZone': instance.timeZone,
    };
