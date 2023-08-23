// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitStop _$TransitStopFromJson(Map<String, dynamic> json) => TransitStop(
      name: json['name'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransitStopToJson(TransitStop instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
    };
