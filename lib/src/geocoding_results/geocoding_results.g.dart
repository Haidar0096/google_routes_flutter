// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodingResults _$GeocodingResultsFromJson(Map<String, dynamic> json) =>
    GeocodingResults(
      origin: json['origin'] == null
          ? null
          : GeocodedWaypoint.fromJson(json['origin'] as Map<String, dynamic>),
      destination: json['destination'] == null
          ? null
          : GeocodedWaypoint.fromJson(
              json['destination'] as Map<String, dynamic>),
      intermediates: (json['intermediates'] as List<dynamic>?)
          ?.map((e) => GeocodedWaypoint.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GeocodingResultsToJson(GeocodingResults instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'destination': instance.destination,
      'intermediates': instance.intermediates,
    };
