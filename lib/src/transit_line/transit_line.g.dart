// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitLine _$TransitLineFromJson(Map<String, dynamic> json) => TransitLine(
      agencies: (json['agencies'] as List<dynamic>?)
          ?.map((e) => TransitAgency.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      uri: json['uri'] as String?,
      color: json['color'] as String?,
      iconUri: json['iconUri'] as String?,
      nameShort: json['nameShort'] as String?,
      textColor: json['textColor'] as String?,
      vehicle: json['vehicle'] == null
          ? null
          : TransitVehicle.fromJson(json['vehicle'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransitLineToJson(TransitLine instance) =>
    <String, dynamic>{
      'agencies': instance.agencies,
      'name': instance.name,
      'uri': instance.uri,
      'color': instance.color,
      'iconUri': instance.iconUri,
      'nameShort': instance.nameShort,
      'textColor': instance.textColor,
      'vehicle': instance.vehicle,
    };
