// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'speed_reading_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpeedReadingInterval _$SpeedReadingIntervalFromJson(
        Map<String, dynamic> json) =>
    SpeedReadingInterval(
      startPolylinePointIndex: json['startPolylinePointIndex'] as int?,
      endPolylinePointIndex: json['endPolylinePointIndex'] as int?,
      speed: $enumDecodeNullable(_$SpeedEnumMap, json['speed']),
    );

Map<String, dynamic> _$SpeedReadingIntervalToJson(
        SpeedReadingInterval instance) =>
    <String, dynamic>{
      'startPolylinePointIndex': instance.startPolylinePointIndex,
      'endPolylinePointIndex': instance.endPolylinePointIndex,
      'speed': _$SpeedEnumMap[instance.speed],
    };

const _$SpeedEnumMap = {
  Speed.speedUnspecified: 'SPEED_UNSPECIFIED',
  Speed.normal: 'NORMAL',
  Speed.slow: 'SLOW',
  Speed.trafficJam: 'TRAFFIC_JAM',
};
