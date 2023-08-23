// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compute_routes_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComputeRouteResult _$ComputeRouteResultFromJson(Map<String, dynamic> json) =>
    ComputeRouteResult(
      routes: (json['routes'] as List<dynamic>?)
          ?.map((e) => Route.fromJson(e as Map<String, dynamic>))
          .toList(),
      fallbackInfo: json['fallbackInfo'] == null
          ? null
          : FallbackInfo.fromJson(json['fallbackInfo'] as Map<String, dynamic>),
      geocodingResults: json['geocodingResults'] == null
          ? null
          : GeocodingResults.fromJson(
              json['geocodingResults'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComputeRouteResultToJson(ComputeRouteResult instance) =>
    <String, dynamic>{
      'routes': instance.routes,
      'fallbackInfo': instance.fallbackInfo,
      'geocodingResults': instance.geocodingResults,
    };
