// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compute_route_matrix_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComputeRouteMatrixResult _$ComputeRouteMatrixResultFromJson(
        Map<String, dynamic> json) =>
    ComputeRouteMatrixResult(
      entries: (json['entries'] as List<dynamic>?)
          ?.map((e) => RouteMatrixEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComputeRouteMatrixResultToJson(
        ComputeRouteMatrixResult instance) =>
    <String, dynamic>{
      'entries': instance.entries,
    };
