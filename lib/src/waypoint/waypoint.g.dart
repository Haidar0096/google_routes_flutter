// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waypoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Waypoint _$WaypointFromJson(Map<String, dynamic> json) => Waypoint(
      via: json['via'] as bool?,
      vehicleStopover: json['vehicleStopover'] as bool?,
      sideOfRoad: json['sideOfRoad'] as bool?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      placeId: json['placeId'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$WaypointToJson(Waypoint instance) => <String, dynamic>{
      'via': instance.via,
      'vehicleStopover': instance.vehicleStopover,
      'sideOfRoad': instance.sideOfRoad,
      'location': instance.location,
      'placeId': instance.placeId,
      'address': instance.address,
    };
