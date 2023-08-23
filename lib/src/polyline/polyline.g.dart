// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polyline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Polyline _$PolylineFromJson(Map<String, dynamic> json) => Polyline(
      encodedPolyline: json['encodedPolyline'] as String?,
      geoJsonLinestring: json['geoJsonLinestring'],
    );

Map<String, dynamic> _$PolylineToJson(Polyline instance) => <String, dynamic>{
      'encodedPolyline': instance.encodedPolyline,
      'geoJsonLinestring': instance.geoJsonLinestring,
    };
