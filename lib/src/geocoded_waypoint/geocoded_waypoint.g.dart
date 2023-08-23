// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoded_waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodedWaypoint _$GeocodedWaypointFromJson(Map<String, dynamic> json) =>
    GeocodedWaypoint(
      geocoderStatus: json['geocoderStatus'] == null
          ? null
          : Status.fromJson(json['geocoderStatus'] as Map<String, dynamic>),
      type: (json['type'] as List<dynamic>?)?.map((e) => e as String).toList(),
      partialMatch: json['partialMatch'] as bool?,
      placeId: json['placeId'] as String?,
      intermediateWaypointRequestIndex:
          json['intermediateWaypointRequestIndex'] as int?,
    );

Map<String, dynamic> _$GeocodedWaypointToJson(GeocodedWaypoint instance) =>
    <String, dynamic>{
      'geocoderStatus': instance.geocoderStatus,
      'type': instance.type,
      'partialMatch': instance.partialMatch,
      'placeId': instance.placeId,
      'intermediateWaypointRequestIndex':
          instance.intermediateWaypointRequestIndex,
    };
