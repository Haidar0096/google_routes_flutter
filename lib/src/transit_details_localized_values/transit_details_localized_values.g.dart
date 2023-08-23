// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transit_details_localized_values.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransitDetailsLocalizedValues _$TransitDetailsLocalizedValuesFromJson(
        Map<String, dynamic> json) =>
    TransitDetailsLocalizedValues(
      arrivalTime: json['arrivalTime'] == null
          ? null
          : LocalizedTime.fromJson(json['arrivalTime'] as Map<String, dynamic>),
      departureTime: json['departureTime'] == null
          ? null
          : LocalizedTime.fromJson(
              json['departureTime'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransitDetailsLocalizedValuesToJson(
        TransitDetailsLocalizedValues instance) =>
    <String, dynamic>{
      'arrivalTime': instance.arrivalTime,
      'departureTime': instance.departureTime,
    };
