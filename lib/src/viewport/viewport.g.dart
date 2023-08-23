// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Viewport _$ViewportFromJson(Map<String, dynamic> json) => Viewport(
      low: json['low'] == null
          ? null
          : LatLng.fromJson(json['low'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : LatLng.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ViewportToJson(Viewport instance) => <String, dynamic>{
      'low': instance.low,
      'high': instance.high,
    };
