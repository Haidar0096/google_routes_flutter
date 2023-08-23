// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_matrix_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteMatrixEntry _$RouteMatrixEntryFromJson(Map<String, dynamic> json) =>
    RouteMatrixEntry(
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
      condition: $enumDecodeNullable(
          _$RouteMatrixElementConditionEnumMap, json['condition']),
      distanceMeters: json['distanceMeters'] as int?,
      duration: json['duration'] as String?,
      staticDuration: json['staticDuration'] as String?,
      travelAdvisory: json['travelAdvisory'] == null
          ? null
          : RouteTravelAdvisory.fromJson(
              json['travelAdvisory'] as Map<String, dynamic>),
      fallbackInfo: json['fallbackInfo'] == null
          ? null
          : FallbackInfo.fromJson(json['fallbackInfo'] as Map<String, dynamic>),
      localizedValues: json['localizedValues'] == null
          ? null
          : LocalizedValues.fromJson(
              json['localizedValues'] as Map<String, dynamic>),
      originIndex: json['originIndex'] as int?,
      destinationIndex: json['destinationIndex'] as int?,
    );

Map<String, dynamic> _$RouteMatrixEntryToJson(RouteMatrixEntry instance) =>
    <String, dynamic>{
      'status': instance.status,
      'condition': instance.condition,
      'distanceMeters': instance.distanceMeters,
      'duration': instance.duration,
      'staticDuration': instance.staticDuration,
      'travelAdvisory': instance.travelAdvisory,
      'fallbackInfo': instance.fallbackInfo,
      'localizedValues': instance.localizedValues,
      'originIndex': instance.originIndex,
      'destinationIndex': instance.destinationIndex,
    };

const _$RouteMatrixElementConditionEnumMap = {
  RouteMatrixElementCondition.routeMatrixElementConditionUnspecified:
      'ROUTE_MATRIX_ELEMENT_CONDITION_UNSPECIFIED',
  RouteMatrixElementCondition.routeExists: 'ROUTE_EXISTS',
  RouteMatrixElementCondition.routeNotFound: 'ROUTE_NOT_FOUND',
};
