// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_stop_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitStopDetails _$TransitStopDetailsFromJson(Map<String, dynamic> json) =>
    TransitStopDetails(
      arrivalStop: json['arrivalStop'] == null
          ? null
          : TransitStop.fromJson(json['arrivalStop'] as Map<String, dynamic>),
      arrivalTime: json['arrivalTime'] as String?,
      departureStop: json['departureStop'] == null
          ? null
          : TransitStop.fromJson(json['departureStop'] as Map<String, dynamic>),
      departureTime: json['departureTime'] as String?,
    );

Map<String, dynamic> _$TransitStopDetailsToJson(TransitStopDetails instance) =>
    <String, dynamic>{
      'arrivalStop': instance.arrivalStop,
      'arrivalTime': instance.arrivalTime,
      'departureStop': instance.departureStop,
      'departureTime': instance.departureTime,
    };
