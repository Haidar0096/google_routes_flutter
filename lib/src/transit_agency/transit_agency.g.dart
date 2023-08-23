// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_agency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitAgency _$TransitAgencyFromJson(Map<String, dynamic> json) =>
    TransitAgency(
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$TransitAgencyToJson(TransitAgency instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'uri': instance.uri,
    };
