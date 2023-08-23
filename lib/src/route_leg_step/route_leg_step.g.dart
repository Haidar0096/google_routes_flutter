// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_leg_step.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteLegStep _$RouteLegStepFromJson(Map<String, dynamic> json) => RouteLegStep(
      distanceMeters: json['distanceMeters'] as int?,
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
      navigationInstruction: json['navigationInstruction'] == null
          ? null
          : NavigationInstruction.fromJson(
              json['navigationInstruction'] as Map<String, dynamic>),
      travelAdvisory: json['travelAdvisory'] == null
          ? null
          : RouteLegStepTravelAdvisory.fromJson(
              json['travelAdvisory'] as Map<String, dynamic>),
      localizedValues: json['localizedValues'] == null
          ? null
          : RouteLegStepLocalizedValues.fromJson(
              json['localizedValues'] as Map<String, dynamic>),
      transitDetails: json['transitDetails'] == null
          ? null
          : RouteLegStepTransitDetails.fromJson(
              json['transitDetails'] as Map<String, dynamic>),
      travelMode:
          $enumDecodeNullable(_$RouteTravelModeEnumMap, json['travelMode']),
    );

Map<String, dynamic> _$RouteLegStepToJson(RouteLegStep instance) =>
    <String, dynamic>{
      'distanceMeters': instance.distanceMeters,
      'staticDuration': instance.staticDuration,
      'polyline': instance.polyline,
      'startLocation': instance.startLocation,
      'endLocation': instance.endLocation,
      'navigationInstruction': instance.navigationInstruction,
      'travelAdvisory': instance.travelAdvisory,
      'localizedValues': instance.localizedValues,
      'transitDetails': instance.transitDetails,
      'travelMode': _$RouteTravelModeEnumMap[instance.travelMode],
    };

const _$RouteTravelModeEnumMap = {
  RouteTravelMode.travelModeUnspecified: 'TRAVEL_MODE_UNSPECIFIED',
  RouteTravelMode.drive: 'DRIVE',
  RouteTravelMode.bicycle: 'BICYCLE',
  RouteTravelMode.walk: 'WALK',
  RouteTravelMode.twoWheeler: 'TWO_WHEELER',
  RouteTravelMode.transit: 'TRANSIT',
};
