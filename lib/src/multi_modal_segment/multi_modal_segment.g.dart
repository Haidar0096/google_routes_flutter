// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_modal_segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MultiModalSegment _$MultiModalSegmentFromJson(Map<String, dynamic> json) =>
    MultiModalSegment(
      navigationInstruction: json['navigationInstruction'] == null
          ? null
          : NavigationInstruction.fromJson(
              json['navigationInstruction'] as Map<String, dynamic>),
      travelMode:
          $enumDecodeNullable(_$RouteTravelModeEnumMap, json['travelMode']),
      stepStartIndex: json['stepStartIndex'] as int?,
      stepEndIndex: json['stepEndIndex'] as int?,
    );

Map<String, dynamic> _$MultiModalSegmentToJson(MultiModalSegment instance) =>
    <String, dynamic>{
      'navigationInstruction': instance.navigationInstruction,
      'travelMode': _$RouteTravelModeEnumMap[instance.travelMode],
      'stepStartIndex': instance.stepStartIndex,
      'stepEndIndex': instance.stepEndIndex,
    };

const _$RouteTravelModeEnumMap = {
  RouteTravelMode.travelModeUnspecified: 'TRAVEL_MODE_UNSPECIFIED',
  RouteTravelMode.drive: 'DRIVE',
  RouteTravelMode.bicycle: 'BICYCLE',
  RouteTravelMode.walk: 'WALK',
  RouteTravelMode.twoWheeler: 'TWO_WHEELER',
  RouteTravelMode.transit: 'TRANSIT',
};
